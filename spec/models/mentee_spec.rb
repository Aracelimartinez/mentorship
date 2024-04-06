# frozen_string_literal: true

require "rails_helper"

RSpec.describe Mentee, type: :model do
  describe "validations" do
    it "validates presence of email" do
      should validate_presence_of(:email)
    end

    it "validates format of email" do
      should allow_value("test@example.com").for(:email)
      should_not allow_value("test").for(:email)
    end

    it "validates presence of name" do
      should validate_presence_of(:name)
    end
  end
end
