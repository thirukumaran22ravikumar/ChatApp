class MessagesController < ApplicationController
  def create
    chat_room = ChatRoom.find(params[:chat_room_id])
    message = chat_room.messages.create(user: current_user, content: params[:message][:content]) # ✅ Fix here

    # ActionCable.server.broadcast("private_chat:#{chat_room.id}", {
    #   sender: message.user.u_name,
    #   content: message.content
    # })

    head :ok
  end

  def show
    chat_room = GroupChatRoom.find(1)
    message = chat_room.group_chat_messages.create(content: params[:message][:content]) # ✅ Fix here
  end
  
end
