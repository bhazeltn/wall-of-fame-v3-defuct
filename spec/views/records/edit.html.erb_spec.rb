require 'rails_helper'

RSpec.describe "records/edit", type: :view do
  before(:each) do
    @record = assign(:record, Record.create!(
      level: "MyString",
      segment: "MyString",
      score_type: "MyString",
      score: 1.5,
      competition: "MyString"
    ))
  end

  it "renders the edit record form" do
    render

    assert_select "form[action=?][method=?]", record_path(@record), "post" do

      assert_select "input[name=?]", "record[level]"

      assert_select "input[name=?]", "record[segment]"

      assert_select "input[name=?]", "record[score_type]"

      assert_select "input[name=?]", "record[score]"

      assert_select "input[name=?]", "record[competition]"
    end
  end
end
