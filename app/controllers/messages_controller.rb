class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    authorize @conversation
    authorize @message
    if @message.save
      # @message = Message.new
      respond_to do |format|
        format.js
        format.html { redirect_to conversation_path(@conversation) }
      end
    else

    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
