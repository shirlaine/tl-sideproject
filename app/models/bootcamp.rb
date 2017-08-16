class Bootcamp < ApplicationRecord
  validates :name, :startdate, :enddate, presence: true

  validate :enddate_cannot_be_before_startdate

  private

  def enddate_cannot_be_before_startdate
    if enddate<=startdate
      errors.add(:enddate, "Has to be after startdate")
    end
  end

end
