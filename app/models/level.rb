class Level < ApplicationRecord
    has_many :records

    def name
        if age.nil? || age.empty?
            return "#{level} #{discipline}"
        else
            return "#{level} #{discipline} #{age}"
        end
    end
end
