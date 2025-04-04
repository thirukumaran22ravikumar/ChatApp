class GroupRoomsController < ApplicationController
	before_action :authenticate_user!
	def show
		@chat_room = GroupChatRoom.find_by(id: 1)
		if @chat_room
			@messages = @chat_room.group_chat_messages.present? ? @chat_room.group_chat_messages : []
		end
	end
end