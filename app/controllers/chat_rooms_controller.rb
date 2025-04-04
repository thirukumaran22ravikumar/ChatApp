class ChatRoomsController < ApplicationController
	before_action :authenticate_user!
	def index
		@user = User.where.not(id: current_user.id)
	end

	def show
		@chat_room = ChatRoom.find_or_create_by_user(current_user, User.find(params[:id]))
		@messages = @chat_room.messages
	end

end