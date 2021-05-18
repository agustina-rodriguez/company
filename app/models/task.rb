class Task < ApplicationRecord
  belongs_to :person

  validates :assignament_date, :finish_date, :state, :description, :presence => true

  def estado
    if state == 1
      "Sin iniciar"
    elsif state == 2
      "En progreso"
    else
      "Finalizada"
    end
  end 
end
