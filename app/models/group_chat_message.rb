class GroupChatMessage < ApplicationRecord
  belongs_to :group_chat_room
  belongs_to :user

  after_create_commit do 
    begin
      GroupChatChannel.broadcast_to group_chat_room, { # Use `group_chat_room`
        sender: user.u_name,
        content: content
      }
    rescue => e
      Rails.logger.error "Failed to broadcast message: #{e.message}"
    end
  end
end
