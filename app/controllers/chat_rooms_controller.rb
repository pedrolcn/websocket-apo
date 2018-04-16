class ChatRoomsController < ApplicationController
  before_action :set_chatroom, only: [:show, :destroy]
  before_action :authenticate_user!, only: [:show]

  def index
    @chatrooms = ChatRoom.all
  end

  def create
    ChatRoom.create(chat_room_params)
    redirect_to root_path
  end

  def show
    @message = Message.new
  end

  def destroy
    @chat_room.destroy
    redirect_to root_path
  end

  private

  def set_chatroom
    @chat_room = ChatRoom.find(params[:id])
  end

  def chat_room_params
    params.permit(:topic)
  end
end