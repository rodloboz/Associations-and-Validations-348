class Intern < ActiveRecord::Base
  belongs_to :doctor # it will look for doctor_id
end
