class Applicant < ApplicationRecord
  belongs_to :bootcamp, optional: true
end
