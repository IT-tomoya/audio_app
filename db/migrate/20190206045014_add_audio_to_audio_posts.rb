class AddAudioToAudioPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :audio_posts, :audio, :string
  end
end
