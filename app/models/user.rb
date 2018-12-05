class User < ApplicationRecord
  has_many :orders
  has_many :recipes

  attr_accessor :login

  def login
    @login || self.username || self.email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:login]

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.strip.downcase}]).first
  end
  after_save do |u|
    ip = u.current_sign_in_ip == "127.0.0.1" || !u.current_sign_in_ip ? "37.216.205.33" : u.current_sign_in_ip
    res = Geocoder.search ip
    loc = res.first.data["loc"].split ","
    u.update_column :latitude, loc[0]
    u.update_column :longitude, loc[1]
  end
end
