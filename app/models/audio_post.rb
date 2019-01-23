class AudioPost < ApplicationRecord
  validates :user_name, length: { maximum: 20}
end
