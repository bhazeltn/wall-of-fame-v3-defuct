require 'rails_helper'

RSpec.describe Competition, type: :model do
    context "Validations" do
        it "ensures the presense of a name" do
          c = Competition.new(name: "").save
          expect(c).to eq(false)
        end
    end
end
