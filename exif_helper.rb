# frozen_string_literal: true

module ExifHelper
  module_function

  def flatten_hash(param, _prefix = nil)
    param.each_pair.reduce({}) do |a, (k, v)|
      v.is_a?(Hash) ? a.merge(flatten_hash(v, "#{k}.")) : a.merge(k.to_s.to_sym => v)
    end
  end

  def print_result(params)
    params.each { |k, v| p "#{k}: #{v}" }
  end

  def fetch_image(image_url)
    delete_temp_image

    open(image_url) do |image|
      File.open("#{download_path}/temp_image.jpg", 'wb') do |file|
        file.write(image.read)
      end
    end
  end

  def download_path
    File.expand_path('temp', __dir__)
  end

  def delete_temp_image
    FileUtils.rm_rf Dir.glob("#{download_path}/*.jpg")
  end
end
