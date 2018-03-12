class MessagesController < ApplicationController
    
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.contact(@message).deliver
    else
      render :new
    end
  end

  private
    def message_params
        params.require(:message).permit(:email, :subject, :text)
    end
end
