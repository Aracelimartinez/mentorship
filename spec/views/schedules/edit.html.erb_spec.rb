require "rails_helper"

RSpec.describe "schedules/edit", type: :view do
  let(:schedule) {
    Schedule.create!(
      mentor: nil,
      mentee: nil,
      description: "MyString",
      accepted: false
    )
  }

  before(:each) do
    assign(:schedule, schedule)
  end

  it "renders the edit schedule form" do
    render

    assert_select "form[action=?][method=?]", schedule_path(schedule), "post" do
      assert_select "input[name=?]", "schedule[mentor_id]"

      assert_select "input[name=?]", "schedule[mentee_id]"

      assert_select "input[name=?]", "schedule[description]"

      assert_select "input[name=?]", "schedule[accepted]"
    end
  end
end
