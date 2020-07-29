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

  def self.add_designer(name, title, specialty)
    Designer.create(name: name, title: title, specialty: specialty)
  end

  def self.promotions(id, title)
    find_designer = Designer.all.find do |dsgn|
      dsgn.id == id 
    end
    binding.pry
    find_designer.title = title
  end


end