class V1::MessagesController < ApplicationController
    def index
      @messages = Message.find(Message.pluck(:id).sample)
      render json: @messages
    end
  end