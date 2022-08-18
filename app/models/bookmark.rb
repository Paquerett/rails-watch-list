class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list

  validates :comment, presence: true, length:{ minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
  validates :movie, uniqueness: { scope: :list }
end
