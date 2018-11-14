class Api::V1::StylesController < ApplicationController
  def index
    @styles = Style.all
    render json: @styles
  end

    def show
      @style = Style.find_by(id: params[:id])
      if @style
        render json: @style
      else
        render json: {error: 'Style not found.'}, status: 400
      end
    end

    def create
      @style = Style.new(style_params)
      if @style.save
        render json: @style
      else
        render json: {error: 'Unable to create style.'}, status: 400
      end
    end

    def update
      @style = Style.find_by(id: params[:id])
      if @style.update(style_params)
        render json: @style
      else
        render json: {error: 'Unable to update style.'}, status: 400
      end
    end

    private
    def style_params
      params.require(:style).permit(:top_front_url, :top_back_url, :bottom_front_url, :bottom_back_url, :shoe_url, :likes)
    end
end
