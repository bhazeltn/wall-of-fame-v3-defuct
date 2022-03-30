require 'rails_helper'

RSpec.describe Skater, type: :model do
  context "Validations" do
    it "ensures the presense of a name" do
      skater = Skater.new(f_name: "", l_name: "").save
      expect(skater).to eq(false)
    end


  end

  
end
