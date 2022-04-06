class Record < ApplicationRecord
    belongs_to :skater
    belongs_to :competition
    belongs_to :level
end
