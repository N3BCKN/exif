module ExifHelper
  extend self
  
  def flatten_hash(param, prefix=nil)
    param.each_pair.reduce({}) do |a, (k, v)|
      v.is_a?(Hash) ? a.merge(flatten_hash(v, "#{k}.")) : a.merge("#{k}".to_sym => v)
    end
  end
  
  def print_result(params)
    params.each { |k,v| p "#{k}: #{v}" }
  end 
  
  def fetch_image(image_url)
    self.delete_temp_image

    open(image_url) do |image|
      File.open("#{self.download_path}/temp_image.jpg", "wb") do |file|
        file.write(image.read)
      end
    end
  end 

  def download_path
    File.expand_path('temp', __dir__)
  end 

  def delete_temp_image
    FileUtils.rm_rf("#{self.download_path}/.", secure: true)
  end 
end 
