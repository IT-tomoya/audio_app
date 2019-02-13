class AudioUploader < CarrierWave::Uploader::Base

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  #アップロード可能な拡張子のリスト
  def extension_whitelist
    %w(mp3 wav mp4)
  end
end
