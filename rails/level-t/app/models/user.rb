class User < ActiveRecord::Base
  has_many :links
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # attr_accessor :lat, :lon
  def has_address
    return true if lat != 0.0 and lon != 0.0 else false
  end
end