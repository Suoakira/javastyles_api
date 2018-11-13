class Api::V1::StylesController < ApplicationController
  def index
    @styles = Style.all
    render json: @styles
  end
end
