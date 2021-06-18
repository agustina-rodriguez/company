class Person < ApplicationRecord
  belongs_to :department
  has_many :tasks

  validates :first_name, :last_name, :gender, :birth_date, :presence => true
  validates :document_number, :presence => true, :uniqueness => true

  def full_name
    first_name + " " + last_name
  end

  def genero
    if gender == 1
      "Masculino"
    else
      "Femenino"
    end
  end

  def age
    Time.now.year - birth_date.year
  end
end
