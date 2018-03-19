class Block < ApplicationRecord
  belongs_to :article, inverse_of: :blocks
  default_scope {order(:num)}

  validates :num, presence: true, numericality: {only_integer: true}
end
