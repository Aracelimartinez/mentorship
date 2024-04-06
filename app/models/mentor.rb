# frozen_string_literal: true

class Mentor < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  validates :name, presence: true
end
