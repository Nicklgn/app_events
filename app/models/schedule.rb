class Schedule < ApplicationRecord
  belongs_to :event, inverse_of: :schedules
  default_scope {order(:sstart)}

  validates :sname, presence: true
  validates :sstart, presence: true
  validates :splace, presence: true
end
