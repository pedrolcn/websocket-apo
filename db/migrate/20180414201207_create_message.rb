class CreateMessage < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :chat_room_id
      t.integer :user_id
      t.string :content
      t.string :status
    end

    add_foreign_key :messages, :chat_rooms
    add_foreign_key :messages, :users
  end
end
