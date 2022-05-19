class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.string :name
      t.string :text
      t.text :image
      t.references :users,  foreign_key: true
      t.timestamps null: false
    end
  end
end
