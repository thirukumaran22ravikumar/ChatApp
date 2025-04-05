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

  
end
