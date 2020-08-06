class MessagesController < ApplicationController
  
  def index
    @message = Message.new

  end

  def create
    @message = messages.new(message_params)

    
  end
  
  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

  
end