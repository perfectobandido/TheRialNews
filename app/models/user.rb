class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  # Devise modules (agrega los módulos que estés utilizando)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :NewsArticles



  # Define los roles disponibles
  #ROLES = ['admin', 'user']

  # Valida que el rol sea uno de los roles disponibles
  #validates :role, inclusion: { in: ROLES }

  # Verifica si un usuario tiene el rol de administrador
  #def admin?
  #  role == 'admin'
  #end


end
