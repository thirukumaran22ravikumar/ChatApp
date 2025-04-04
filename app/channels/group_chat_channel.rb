class GroupChatChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    chat_room = GroupChatRoom.find(1)
    stream_for chat_room
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
