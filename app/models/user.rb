class User < ActiveRecord::Base
  validates :name, presence: true
  validates :password, length: {minimum: 6}
  emailFormatValidation = /[a-z.-]+@[a-z \d -.]+[.][a-z]+/i
  validates :email, format: {with: emailFormatValidation}
  
  
end
