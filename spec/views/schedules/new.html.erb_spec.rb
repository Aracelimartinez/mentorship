require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      mentor: nil,
      mentee: nil,
      description: "MyString",
      accepted: false
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input[name=?]", "schedule[mentor_id]"

      assert_select "input[name=?]", "schedule[mentee_id]"

      assert_select "input[name=?]", "schedule[description]"

      assert_select "input[name=?]", "schedule[accepted]"
    end
  end
end
