class Appointment
  attr_accessor :patient, :date, :doctor
@@all = []
def initialize(date, patient, doctor)
@patient = patient
@date = date
@doctor = doctor
@@all << self
end

def self.all
@@all
end
end
