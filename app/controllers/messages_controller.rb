class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    @message.save
    authorize @conversation
    authorize @message
    redirect_to conversation_path(@conversation)
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
