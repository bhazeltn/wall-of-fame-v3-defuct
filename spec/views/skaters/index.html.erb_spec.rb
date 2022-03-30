require 'rails_helper'

RSpec.describe "skaters/index", type: :view do
  before(:each) do
    assign(:skaters, [
      Skater.create!(
        f_name: "F Name",
        l_name: "L Name"
      ),
      Skater.create!(
        f_name: "F Name",
        l_name: "L Name"
      )
    ])
  end

  it "renders a list of skaters" do
    render
    assert_select "tr>td", text: "F Name".to_s, count: 2
    assert_select "tr>td", text: "L Name".to_s, count: 2
  end
end
