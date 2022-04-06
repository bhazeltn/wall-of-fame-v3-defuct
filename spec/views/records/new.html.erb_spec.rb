# require 'rails_helper'

# RSpec.describe "records/new", type: :view do
#   before(:each) do
#     assign(:record, Record.new(
#       skater_id: 1,
#       level_id: 1,
#       segment: "MyString",
#       score_type: "MyString",
#       score: 1.5,
#       competition_id: 1
#     ))
#   end

#   it "renders new record form" do
#     render

#     assert_select "form[action=?][method=?]", records_path, "post" do

#       assert_select "input[name=?]", "record[skater_id]"

#       assert_select "input[name=?]", "record[level_id]"

#       assert_select "input[name=?]", "record[segment]"

#       assert_select "input[name=?]", "record[score_type]"

#       assert_select "input[name=?]", "record[score]"

#       assert_select "input[name=?]", "record[competition_id]"
#     end
#   end
# end
