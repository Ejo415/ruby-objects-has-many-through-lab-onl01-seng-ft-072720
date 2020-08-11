class Doctor
  attr_accessor :name, :patient, :appointments
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    save
  end
  
  def save 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
   def new_appointment
    appointment = Appointments.new(patient, date, self)
    @appointments << appointment
    appointment
  end
  
  def appointments
    self.appointments
  end
  
  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end
  
end
 
  