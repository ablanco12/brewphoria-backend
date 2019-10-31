class Review < ApplicationRecord
    belongs_to :beers
    belongs_to :users
end
