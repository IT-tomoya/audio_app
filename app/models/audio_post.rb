class AudioPost < ApplicationRecord
  mount_uploader :picture, PictureUploader
  mount_uploader :audio, AudioUploader

  private

    #アップロードされた画像のサイズをバリデーションする
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

    def audio_size
      if audio.size > 100.megabytes
        errors.add(:audio, "should be less than 100MB")
      end
    end
end
