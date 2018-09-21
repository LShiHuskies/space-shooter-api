class Game < ApplicationRecord
    belongs_to :user
end

ActionController::Parameters.permit_all_parameters = true
