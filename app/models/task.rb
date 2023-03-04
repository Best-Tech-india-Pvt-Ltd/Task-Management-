class Task < ApplicationRecord
  belongs_to :category, optional: true
  has_many_attached :files, dependent: :destroy
end
