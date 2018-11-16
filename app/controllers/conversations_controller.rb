class ConversationsController < ApplicationController
  def index
    @conversations = policy_scope(Conversation)
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
    @message.conversation = @conversation
    @message.user = current_user
    authorize @conversation
    authorize @message
  end

  def create
    @conversation = Conversation.create!(reservation_id: params[:reservation])
    authorize @conversation

    redirect_to conversation_path(@conversation)
  end
end
