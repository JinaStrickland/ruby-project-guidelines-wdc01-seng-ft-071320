class Client < ActiveRecord::Base

  has_many :projects
  has_many :designers, through: :projects


end