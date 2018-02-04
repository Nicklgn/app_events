class Event < ApplicationRecord
  has_many :schedules, dependent: :destroy, inverse_of: :event
  accepts_nested_attributes_for :schedules, allow_destroy: true, reject_if: :all_blank

  validates :ename, presence: true
  validates :estart, presence: true
  validates :level, presence: true
  validates :edesc, presence: true
  validates :member, presence: true
  validates :eplace, presence: true
end
