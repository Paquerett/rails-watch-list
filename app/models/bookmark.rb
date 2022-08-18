class Bookmark < ApplicationRecord
  belongs_to :movie, :list

  validates: :comment, presence: true, length: { minimum: 6 }
  validates: :movie, presence: true
  validates: :list, presence: true
  validates: :movie :list, uniqueness: true
end
