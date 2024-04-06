require 'rails_helper'

RSpec.describe "schedules/show", type: :view do
  before(:each) do
    assign(:schedule, Schedule.create!(
      mentor: nil,
      mentee: nil,
      description: "Description",
      accepted: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/false/)
  end
end
