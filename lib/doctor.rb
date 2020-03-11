
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
    #returns an array of appointments for a particular doctor 
  end
  
  def patients
    self.appointments.map {|appointment| appointment.patient}
    #returns an array of all the patients from appointments connected to a specific doctor
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
end 

