require 'rails_helper'

RSpec.describe Skater, type: :model do
  context "Validations" do
    it "ensures the presense of a name" do
      skater = Skater.new(f_name: "", l_name: "").save
      expect(skater).to eq(false)
    end

    it "Skater.name should be the same as f_name and l_name" do
      s = Skater.new(f_name: "Sally", l_name: "Doe")
      expect(s.name).to eq(s.f_name + " " + s.l_name)
    end

  end

  

  
end
