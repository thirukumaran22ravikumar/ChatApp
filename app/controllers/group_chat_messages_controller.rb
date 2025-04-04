class GroupChatMessagesController < ApplicationController

  def create
   chat_room = GroupChatRoom.find(1)
   p "--------------------------"
   p params[:message][:content].to_s
   p "------------------------------params[:message][:content]"

    message = chat_room.group_chat_messages.create(user: current_user, content: params[:message][:content]) # ✅ Fix here
    head :ok
  end


end