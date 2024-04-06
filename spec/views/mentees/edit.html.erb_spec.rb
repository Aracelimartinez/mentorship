# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'mentees/edit', type: :view do
  let(:mentee) do
    Mentee.create!(
      name: 'MyString',
      bio: 'MyText',
      email: 'test@test.com'
    )
  end

  before(:each) do
    assign(:mentee, mentee)
  end

  it 'renders the edit mentee form' do
    render

    assert_select 'form[action=?][method=?]', mentee_path(mentee), 'post' do
      assert_select 'input[name=?]', 'mentee[name]'

      assert_select 'textarea[name=?]', 'mentee[bio]'

      assert_select 'input[name=?]', 'mentee[email]'
    end
  end
end
