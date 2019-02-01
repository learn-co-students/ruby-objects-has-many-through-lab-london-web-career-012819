class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    arr = []
    appointments.select do |appointment|
      arr << appointment.patient
    end
    arr
  end

  def self.all
    @@all
  end

end
