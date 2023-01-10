class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  def full_name_or_email
    if first_name.present? && last_name.present?
      "#{first_name} #{last_name}"
    else
      email
    end
  end
end
