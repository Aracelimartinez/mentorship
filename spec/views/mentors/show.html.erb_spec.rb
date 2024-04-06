# frozen_string_literal: true

require "rails_helper"

RSpec.describe "mentors/show", type: :view do
  before(:each) do
    assign(:mentor, Mentor.create!(
      name: "Name",
      email: "Email",
      url: "Url",
      bio: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
  end
end
