class GamesController < ApplicationController
  before_action :find_game, only: %i[show]

  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find_by_id(params[:id])
    render json: @game
  end

  def create
    @game = Game.new(params)
  end

  private

  def game_params
    params.require(:game).permit(:question, :choice1, :choice2, :choice3, :education)
  end

  def find_game
    @game = Game.find_by_id(params[:id])
  end

end
