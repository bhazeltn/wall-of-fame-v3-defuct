require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        level: "Level",
        segment: "Segment",
        score_type: "Score Type",
        score: 2.5,
        competition: "Competition"
      ),
      Record.create!(
        level: "Level",
        segment: "Segment",
        score_type: "Score Type",
        score: 2.5,
        competition: "Competition"
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", text: "Level".to_s, count: 2
    assert_select "tr>td", text: "Segment".to_s, count: 2
    assert_select "tr>td", text: "Score Type".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "Competition".to_s, count: 2
  end
end
