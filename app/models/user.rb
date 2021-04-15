class User < ApplicationRecord
  validates :name, :last_name,:document, :phone1, :email, presence: { message: "Este es un campo obligatorio" }
  validates :phone1, length: { maximum: 11 }, numericality: { only_integer: true }
  validates :phone2, length: { maximum: 11 }, numericality: { only_integer: true }, allow_blank: true
  validates :name, :last_name, format: { with: /\A^[a-zA-Z '.-]*\z/, message: "solo permite letras" }, length: { in: 3..50 }, allow_blank: true
  validates :user_type, inclusion: { in: %w(N J), message: "%{value} no es un valor valido" }
  validates :email, confirmation: true, uniqueness: true,  format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  
  def self.user_type_list
    [['Natural','N'],['Juridico','J']]
  end
  
  def self.document_type_list
    [['Cédula Venezolana','V'],['Cédula Extranjera','E'],['RIF Jurídico','J'],['RIF Gobierno','G']]
  end
  #validates :attribute, format: { with: ConstantData::VALID_EMAIL_REGEX }
end
