class ChatRoomsController < ApplicationController
  before_action :set_chatroom, only: [:show]

  def index
    @chatrooms = ChatRoom.all
  end

  def show
    @message = Message.new
  end

  private

  def set_chatroom
    @chat_room = ChatRoom.find(params[:id])
  end
end