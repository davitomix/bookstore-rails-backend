class Api::V1::CharactersController < ApplicationController
  before_action :find_character, only: [:show, :update, :destroy]

  def index
    @characters = Character.all
    render json: @characters, status: 200
  end

  def show
    render json: @character, status: 200
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, status: 200
    else
      render json: "Something went wrong"
    end
  end

  def update
    if @character.update(character_params)
      render json: @character, status: :ok
    else
      render json: "Something went wrong"
    end
  end

  def destroy
    @character.destroy
  end

  private

  def find_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :catchphrase, :secret_key)
  end
end
