class Appointment

  attr_reader :date, :patient, :doctor
  
  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient #coding the association, 1-sided for now
    @doctor = doctor #coding the association, 1-sided for now
    @@all << self
  end

  def self.all
    @@all
  end
end 

#appointment belongs to doctor
#appointment belongs to patient
