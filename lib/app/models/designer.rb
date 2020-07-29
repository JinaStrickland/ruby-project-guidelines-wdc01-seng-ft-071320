class Designer < ActiveRecord::Base

  has_many :projects
  has_many :clients, through: :projects

def self.list_designers 
  Designer.all.each do |designer|
    id = designer.id  
    name = designer.name
    title = designer.title
    specialty = designer.specialty
    p "ID: #{id}, Name: #{name}, Title: #{title}, Specialty: #{specialty}"
  end
end


end