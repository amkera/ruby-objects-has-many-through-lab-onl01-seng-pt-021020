
class Doctor 
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self} #relationship is now circular with this line of code. 
  end
  
  def patients
    appointments.map {|appointment| appointment.patient}
    #we need to go through the appointment class. 
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
end 

