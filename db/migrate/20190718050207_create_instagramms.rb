class CreateInstagramms < ActiveRecord::Migration[5.1]
  def change
    create_table :instagramms do |t|
      t.text :insta

      t.timestamps
    end
  end
end
