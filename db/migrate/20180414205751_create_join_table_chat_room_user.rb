class CreateJoinTableChatRoomUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :chat_rooms, :users do |t|
      t.index [:user_id, :chat_room_id]
      t.index [:chat_room_id, :user_id]
    end
  end
end
