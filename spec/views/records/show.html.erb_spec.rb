require 'rails_helper'

RSpec.describe "records/show", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      level: "Level",
      segment: "Segment",
      score_type: "Score Type",
      score: 2.5,
      competition: "Competition"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Level/)
    expect(rendered).to match(/Segment/)
    expect(rendered).to match(/Score Type/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Competition/)
  end
end
