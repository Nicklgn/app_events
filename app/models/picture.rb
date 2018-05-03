class Picture < ApplicationRecord
  belongs_to :block, inverse_of: :pictures
  has_attached_file :image, styles: {thumb: ["300x300#", :jpeg], medium: ["600x600#", :jpeg], original: [:jpeg]}
  validates_attachment :image, content_type: {content_type: /\Aimage\/.*\z/}, size: {less_than: 1.megabyte}
end
