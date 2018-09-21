class GamesController < ApplicationController

    def index
        render json: Game.all
    end

    def create
        @game = Game.new

        @game.score = params[:score]
        @game.user_id = params[:user_id]

        if (@game.save)
          render json: {
            score: @game.score,
            id: @game.id
            # token: get_token(payload(@game.score, @game.id))
          }
        else
          render json: {
            errors: @game.errors.full_messages
          }, status: :unprocessable_entity
        end
    end

end
