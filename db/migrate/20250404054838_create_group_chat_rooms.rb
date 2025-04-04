class CreateGroupChatRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :group_chat_rooms do |t|
      t.string  :name
      t.timestamps
    end
  end
end
