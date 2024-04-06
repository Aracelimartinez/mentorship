class Schedule < ApplicationRecord
  belongs_to :mentor, optional: false
  belongs_to :mentee, optional: false
end
