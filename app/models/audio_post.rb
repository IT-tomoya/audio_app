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
end
