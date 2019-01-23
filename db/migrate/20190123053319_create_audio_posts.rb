class CreateAudioPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :audio_posts do |t|
      t.string :user_name
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
