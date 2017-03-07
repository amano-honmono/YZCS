class Contest < ApplicationRecord
  validates :contest_name, presence: true
  validates :contest_name, uniqueness: true
  validates :start_time, presence: true
  validates :ending_time, presence: true
  validate :start_end_check

  def start_end_check
    errors.add(:ending_time, "ending time is invalid.") unless
    self.start_time < self.ending_time
  end
end
