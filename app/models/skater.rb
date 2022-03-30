class Skater < ApplicationRecord
    has_many :records
    validates :f_name, presence: true
    validates :l_name, presence: true
end
