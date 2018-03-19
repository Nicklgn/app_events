class Article < ApplicationRecord
  belongs_to :event
  has_many :blocks, dependent: :destroy, inverse_of: :article
  accepts_nested_attributes_for :blocks, allow_destroy: true, reject_if: :all_blank

  validates :artype, presence: true, uniqueness: {scope: :event}
  validates :caption, presence: true
end
