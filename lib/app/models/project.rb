class Project < ActiveRecord::Base

  belongs_to :designer
  belongs_to :client

  # def designer_name
  #   des_name = ""
  #   Designer.all.each do |designer|
  #     des_name = designer.name if designer.id == designer 
  # end

  def self.list_projects
    Project.all.each do |project|
    id = project.id  
    name = project.name
    catergory = project.category
    size = project.size
    location = project.location
    designer = project.designer_id
    des_name = ""
      Designer.all.each do |each_designer|
        des_name = each_designer.name if each_designer.id == designer 
      end
    
    client = project.client_id
    cli_name = ""
      Client.all.each do |each_client|
        cli_name = each_client.name if each_client.id == client
      end

    puts "ID: #{id}, Name: #{name}, Catergory: #{catergory}, Size: #{size}, Location: #{location}, Designer: #{des_name}, Client: #{cli_name}"
    end
  end

  def self.assign_designer(proj_id, dsgn_id)
    Project.all.each do |project|
      if project.id == proj_id
      project.designer_id = dsgn_id
      project.save
      # dsgn.update(title: title)
      end
    end
  end

  def self.show_project_with_no_designer
    Project.all.each do |project|
    if project.designer_id == nil 
    id = project.id  
    name = project.name
    catergory = project.category
    size = project.size
    location = project.location
    designer = project.designer_id
    des_name = ""
      Designer.all.each do |each_designer|
        des_name = each_designer.name if each_designer.id == designer 
      end
    
    client = project.client_id
    cli_name = ""
      Client.all.each do |each_client|
        cli_name = each_client.name if each_client.id == client
      end

    puts "ID: #{id}, Name: #{name}, Catergory: #{catergory}, Size: #{size}, Location: #{location}, Designer: #{des_name}, Client: #{cli_name}"
    end
  end
  end

end