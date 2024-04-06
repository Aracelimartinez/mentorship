# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'mentees/new', type: :view do
  before(:each) do
    assign(:mentee, Mentee.new(
                      name: 'MyString',
                      bio: 'MyText',
                      email: 'test@test.com'
                    ))
  end

  it 'renders new mentee form' do
    render

    assert_select 'form[action=?][method=?]', mentees_path, 'post' do
      assert_select 'input[name=?]', 'mentee[name]'

      assert_select 'textarea[name=?]', 'mentee[bio]'

      assert_select 'input[name=?]', 'mentee[email]'
    end
  end
end
