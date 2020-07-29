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
    Designer.all.map do |dsgn|
      if dsgn.id == id
      dsgn.title = title
      dsgn.save
      # dsgn.update(title: title)
      end
    end
  end


end