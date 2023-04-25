require 'exif'
require 'json'
require 'uri'
require 'open-uri'
require 'fileutils'

require './exif_helper'

if ARGV.empty?
  p 'No arguments...'
  exit
end 

if ARGV[0] =~ URI::ABS_URI
  ExifHelper::fetch_image(ARGV[0])
  image = Dir["#{ExifHelper::download_path}/*"].first
else
  image =  ARGV.first
end 

begin
  data = Exif::Data.new(IO.read(image))
rescue Exif::NotReadable
  p 'image does not contain exif data'
  exit
rescue Errno::ENOENT
  p 'wrong address or url'
  exit
end

result = ExifHelper::flatten_hash data.to_h

# result.delete(:maker_note)

if ARGV[1, ARGV.size].include?('--json')
  result[:maker_note] = result[:maker_note].force_encoding("ISO-8859-1")
  p result.to_json
else
  ExifHelper::print_result(result)
end 

ExifHelper::delete_temp_image






