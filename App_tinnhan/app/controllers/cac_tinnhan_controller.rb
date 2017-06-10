class CacTinnhanController < ApplicationController
  def index
    @messages = Tinnhan.all
  end
  
  def new
    @message = Tinnhan.new
  end

  private
  def message_params
    params.require(:tinnhan).permit(:content)
  end

  public
  def create
    @message = Tinnhan.new(message_params)
    if @message.save
      redirect_to '/messages'
    else
      render 'new'
    end
  end
end
