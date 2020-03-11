
class Doctor 
  attr_accessor :date, :patient, :doctor
  
  @@all = []

  def initialize(date, patient, doctor)
    @date = date 
    @patient = patient 
    
  end
  
  def self.all
    @@all
  end
  
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.map {|appointment| appointment.patient}
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
end 

