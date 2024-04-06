# frozen_string_literal: true

require "rails_helper"

RSpec.describe "mentees/index", type: :view do
  before(:each) do
    assign(:mentees, [
      Mentee.create!(
        name: "Name",
        bio: "MyText",
        email: "teste@teste.com"
      ),
      Mentee.create!(
        name: "Name",
        bio: "MyText",
        email: "teste2@teste.com"
      )
    ])
  end

  it "renders a list of mentees" do
    render
    cell_selector = (Rails::VERSION::STRING >= "7") ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
