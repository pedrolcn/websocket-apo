class CreateChatRoom < ActiveRecord::Migration[5.1]
  def change
    create_table :chat_rooms do |t|
      t.string :topic
      t.timestamps
    end
  end
end
