class Api::V1::MessagesController < ApplicationController
  def random_greeting
    @random = Message.order("RANDOM()").first

    if @random
      render json: {status:'Success', message:"Message fetched succesfully",data: @random.greeting },status: :ok
    else
      render json: {status:'Failed', message: "Failed to fetch Messages",data: @random&.errors },status: :bad_request
    end
  end
end
