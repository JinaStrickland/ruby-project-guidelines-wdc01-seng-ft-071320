require_relative '../config/environment.rb'
require_relative './spec_helper.rb'

describe Designer do
    it ".list_designers returns a list of all designers" do
        #arrange(getting object created), act?, assert

    end
    it ".add_designer adds a designer to the database" do

    end
    it ".promotions changes a designer's title"
    it ".designer_sepcialty_list returns a list of designers name" do

    end
end


# class Designer < ActiveRecord::Base
    
    # def self.list_designers 
    #   Designer.all.each do |designer|
    #     id = designer.id  
    #     name = designer.name
    #     title = designer.title
    #     specialty = designer.specialty
    #     p "ID: #{id}, Name: #{name}, Title: #{title}, Specialty: #{specialty}"
    #   end
    # end
  
    # def self.add_designer(name, title, specialty)
    #   Designer.create(name: name, title: title, specialty: specialty)
    # end
  
    # def self.promotions(id, title)
    #   Designer.all.map do |dsgn|
    #     if dsgn.id == id
    #     dsgn.title = title
    #     dsgn.save
    #     end
    #   end
    # end
  
    # def self.designer_sepcialty_list(specialty)
    #   commercial_designers = Designer.all.find_all do |designer|
    #     designer.specialty == specialty
    #     end
    #     commercial_designers.map do |comm_dsgn|
    #       puts comm_dsgn.name
    #     end
    # end
  
