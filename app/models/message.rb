class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room

  after_create_commit do 
  begin
    PrivateChatChannel.broadcast_to chat_room, {
      sender: user.u_name,
      content: content
    }
  rescue => e
    Rails.logger.error "Failed to broadcast message: #{e.message}"
  end
end


end
