class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         attr_accessor :login
  validates :name, presence: true, length: { minimum: 2 }
  validates :email, format: {  with: /[a-z]*@\w{1,7}.\w{1,4}/,
    message: "only this format mail@mail.com" }
    validates :password, presence: true, length: { minimum: 6 }
    validates :confirm_password, presence: true, length: { minimum: 2 }
end
