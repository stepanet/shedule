class Sheduler < ApplicationRecord
    belongs_to :dayweek
    belongs_to :numlesson
    belongs_to :lesson
end
