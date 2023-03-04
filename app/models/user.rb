class User < ApplicationRecord
  attr_accessor :email_or_phone
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :phone, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  enum :role=>{"admin": "admin", "worker": "worker"}

  def email_or_phone=(email_or_phone)
    @email_or_phone = self.email
  end

  def email_or_phone
    @email_or_phone || self.phone || self.email
  end

end
