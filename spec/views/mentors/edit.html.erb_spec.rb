require 'rails_helper'

RSpec.describe "mentors/edit", type: :view do
  let(:mentor) {
    Mentor.create!(
      name: "MyString",
      email: "MyString",
      url: "MyString",
      bio: "MyText"
    )
  }

  before(:each) do
    assign(:mentor, mentor)
  end

  it "renders the edit mentor form" do
    render

    assert_select "form[action=?][method=?]", mentor_path(mentor), "post" do

      assert_select "input[name=?]", "mentor[name]"

      assert_select "input[name=?]", "mentor[email]"

      assert_select "input[name=?]", "mentor[url]"

      assert_select "textarea[name=?]", "mentor[bio]"
    end
  end
end
