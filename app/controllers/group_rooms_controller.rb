class GroupRoomsController < ApplicationController
	before_action :authenticate_user!
	def show
		@chat_room = GroupChatRoom.find_by(id: 1)
		@messages = @chat_room.group_chat_messages
	end
end