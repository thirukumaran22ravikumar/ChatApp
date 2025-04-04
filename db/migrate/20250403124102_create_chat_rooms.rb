class CreateChatRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :chat_rooms do |t|
      t.references :sender, null: false, foreign_key: { to_table: :users }  # ✅ Explicitly reference users table
      t.references :receiver, null: false, foreign_key: { to_table: :users } # ✅ Explicitly reference users table
      t.timestamps
    end
  end
end
