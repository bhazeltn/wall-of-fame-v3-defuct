# require 'rails_helper'

# RSpec.describe "records/edit", type: :view do
#   before(:each) do
#     @record = assign(:record, Record.create!(
#       skater_id: 1,
#       level_id: 1,
#       segment: "MyString",
#       score_type: "MyString",
#       score: 1.5,
#       competition_id: 1
#     ))
#   end

#   it "renders the edit record form" do
#     render

#     assert_select "form[action=?][method=?]", record_path(@record), "post" do

#       assert_select "input[name=?]", "record[skater_id]"

#       assert_select "input[name=?]", "record[level_id]"

#       assert_select "input[name=?]", "record[segment]"

#       assert_select "input[name=?]", "record[score_type]"

#       assert_select "input[name=?]", "record[score]"

#       assert_select "input[name=?]", "record[competition_id]"
#     end
#   end
# end
