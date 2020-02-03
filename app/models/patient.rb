class Patient < ActiveRecord::Base
has_many :consultations # direct relation
# the through relation needs to be defined above
has_many :doctors, through: :consultations
end
