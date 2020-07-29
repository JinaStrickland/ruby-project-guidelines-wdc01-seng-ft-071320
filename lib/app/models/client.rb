class Client < ActiveRecord::Base

  has_many :projects
  has_many :designers, through: :projects

  def self.list_clients
    Client.all.map do |client|
    id = client.id  
    name = client.name
    sector = client.sector
    location = client.location
    puts "ID: #{id}, Name: #{name}, Sector: #{sector}, Location: #{location}"
    end
  end

end