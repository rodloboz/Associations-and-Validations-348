class Doctor < ActiveRecord::Base
  has_many :interns # looks up all of the associated interns

  has_many :consultations
  has_many :patients, through: :consultations

  validates :first_name, presence: true
  # validates :last_name, uniqueness: true, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
  # validates_uniqueness
end
