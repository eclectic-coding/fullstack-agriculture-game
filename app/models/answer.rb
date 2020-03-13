class Answer < ApplicationRecord
  belongs_to :game, optional: true
end
