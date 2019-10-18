class DialogsController < ApplicationController
  def main
    render json: DialogHandler.new(params).call
  end
end
