
class Doctor 
  attr_reader :name
  
  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.find_all {|appt| appt.doctor == self} #relationship is now circular with this line of code. #returns an array of appointments for a particular doctor 
  end
  
  def patients
    #returns an array of all the patients from appointments connected to a specific doctor
    self.appointments.map {|appointment| appointment.patient}
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self) #date, patient, doctor
  end
  
end 