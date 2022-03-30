class Skater < ApplicationRecord
    validates :f_name, presence: true
    validates :l_name, presence: true
end
