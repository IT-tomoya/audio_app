class AddPictureToAudioPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :audio_posts, :picture, :string
  end
end
