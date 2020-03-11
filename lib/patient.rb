
class Patient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
  
  

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    Appointment.all.map {|appointment| appointment.doctor}
  end

  

end 