# frozen_string_literal: true

json.array! @mentees, partial: 'mentees/mentee', as: :mentee
