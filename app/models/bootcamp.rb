class Bootcamp < ApplicationRecord
  has_many :applicants

  validates :name, :startdate, :enddate, :closingdate, presence: true

  validate :enddate_cannot_be_before_startdate
  validate :closingdate_before_enddate_startdate

  private

  def enddate_cannot_be_before_startdate
    errors.add(:enddate, "Has to be after start date") if enddate <= startdate

  end

  def closingdate_before_enddate_startdate
    errors.add(:closingdate, "Has to be before start date and end date") if closingdate >= startdate
  end

end
