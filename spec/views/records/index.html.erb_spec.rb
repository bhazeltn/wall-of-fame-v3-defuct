# require 'rails_helper'

# RSpec.describe "records/index", type: :view do
#   before(:each) do
#     assign(:records, [
#       Record.create!(
#         skater_id: 2,
#         level_id: 3,
#         segment: "Segment",
#         score_type: "Score Type",
#         score: 4.5,
#         competition_id: 5
#       ),
#       Record.create!(
#         skater_id: 2,
#         level_id: 3,
#         segment: "Segment",
#         score_type: "Score Type",
#         score: 4.5,
#         competition_id: 5
#       )
#     ])
#   end

#   it "renders a list of records" do
#     render
#     assert_select "tr>td", text: 2.to_s, count: 2
#     assert_select "tr>td", text: 3.to_s, count: 2
#     assert_select "tr>td", text: "Segment".to_s, count: 2
#     assert_select "tr>td", text: "Score Type".to_s, count: 2
#     assert_select "tr>td", text: 4.5.to_s, count: 2
#     assert_select "tr>td", text: 5.to_s, count: 2
#   end
# end
