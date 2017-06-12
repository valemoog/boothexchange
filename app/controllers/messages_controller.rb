class MessagesController < ApplicationController

  before_action :find_conversation, only:[:create]


  def index
    @messages = Message.all

    render("messages/index.html.erb")
  end

  def show
    @message = Message.find(params[:id])

    render("messages/show.html.erb")
  end

  def new
    @message = Message.new

    render("messages/new.html.erb")
  end

  def create



    @message = Message.new

    @message.user_id = params[:user_id]
    @message.conversation_id = @conversation.id
    @message.body = params[:body]

    save_status = @message.save

    if save_status == true
      redirect_to("/messages/#{@message.id}", :notice => "Message created successfully.")
    else
      render("messages/new.html.erb")
    end
  end

  def edit
    @message = Message.find(params[:id])

    render("messages/edit.html.erb")
  end

  def update
    @message = Message.find(params[:id])

    @message.user_id = params[:user_id]
    @message.posting_id = params[:posting_id]
    @message.conversation_id = params[:conversation_id]
    @message.body = params[:body]

    save_status = @message.save

    if save_status == true
      redirect_to("/messages/#{@message.id}", :notice => "Message updated successfully.")
    else
      render("messages/edit.html.erb")
    end
  end

  def destroy
    @message = Message.find(params[:id])

    @message.destroy

    if URI(request.referer).path == "/messages/#{@message.id}"
      redirect_to("/", :notice => "Message deleted.")
    else
      redirect_to(:back, :notice => "Message deleted.")
    end
  end

  def find_conversation

    if Conversation.between(params[:sender_id],params[:receiver_id])
      .present?
      @conversation = Conversation.between(params[:sender_id],
      params[:receiver_id]).first
    else

      @conversation = Conversation.new

      @conversation.sender_id = params[:sender_id]
      @conversation.receiver_id = params[:receiver_id]

      @conversation.save
    end
  end



end
