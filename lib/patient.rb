class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    arr = []
    appointments.select do |appointment|
      arr << appointment.doctor
    end
    arr
  end

  def self.all
    @@all
  end

end
