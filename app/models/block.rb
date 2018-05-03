class Block < ApplicationRecord
  belongs_to :article, inverse_of: :blocks
  has_many :pictures, dependent: :destroy, inverse_of: :block
  accepts_nested_attributes_for :pictures, allow_destroy: true, reject_if: :all_blank
  default_scope {order(:num)}

  validates :num, presence: true, numericality: {only_integer: true}
end
