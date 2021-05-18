class Department < ApplicationRecord
  has_many :people

  validates :name, presence: true, uniqueness: { message: "¡No pueden existir dos departamentos con el mismo nombre!" }\
  # validates :name, presence: true
end
