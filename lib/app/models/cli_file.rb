
def greeting
    puts "\n"
    puts "Welcome to Design Studio!"
end

def choose_option
    puts "Choose from the following options(Enter a number):"
    puts "**************************************************"
    puts "1. List all Designers"
    puts "2. List all Clients"
    puts "3. List all Projects"
    puts "4. Add new Designer"
    puts "5. Delete Designer"
    puts "6. Promote a Designer"
    puts "7. Assign a Designer to new Project"
    puts "8. List all Designers that specialize in Commercial Projects:"
    puts "9. Exit"
    puts "**************************************************"
    puts "\n"
end

def exit_program
    puts "\n"
    puts "Thank you for visting us."
    puts "\n"
    exit
end

def action
    user_input = ""
    while user_input
        choose_option
        user_input = gets.chomp.to_i
        case user_input
        when 1 
            puts "\n"
            Designer.list_designers
            puts "\n"
        when 2
            puts "\n"
            Client.list_clients
            puts "\n"
        when 3
            puts "\n"
            Project.list_projects
            puts "\n"
        when 4
            puts "\n"
            new_designer
            puts "\n"
        when 5
            puts "\n"
            delete_new_designer
            puts "\n"
        when 6
            puts "\n"
            promotion
            puts "\n"
        when 7
            puts "\n"
            assign_a_designer
            puts "\n"
        when 8
            puts "\n"
            Designer.designer_sepcialty_list("Commercial")
            puts "\n"
        when 9
            exit_program
            break                                                                          
        else
            # puts "Pʟᴇᴀsᴇ ᴛʀʏ ᴀɢᴀɪɴ."
            puts "\n"
            puts "\n"
            puts "█▀█ █░░ █▀▀ ▄▀█ █▀ █▀▀  ▀█▀ █▀█ █▄█  ▄▀█ █▀▀ ▄▀█ █ █▄░█ ░"
            puts "█▀▀ █▄▄ ██▄ █▀█ ▄█ ██▄  ░█░ █▀▄ ░█░  █▀█ █▄█ █▀█ █ █░▀█ ▄"
            puts "\n"
            puts "\n"
            action
        end
    end
end

def new_designer
    puts "Enter new Designer's name:"
    name = gets.chomp.capitalize
    puts "\n"
    puts "Enter new Designer's title:"
    title = gets.chomp.capitalize
    puts "\n"
    puts "Enter new Designer's specialty:"
    specialty = gets.chomp.capitalize
    puts "\n"
    Designer.add_designer(name, title, specialty)
    puts "\n"
    Designer.list_designers
end

def delete_new_designer
    puts "Enter Designer's ID to delete:"
    puts "\n"
    Designer.list_designers
    puts "\n"
    id = gets.chomp.to_i
    Designer.delete(id)
    puts "\n"
    Designer.list_designers
    puts "\n"
end

def promotion
    puts "It's a promotion day! Who would you like to promote?"
    puts "Here is a list of all the designers. Select Designer's ID:"
    puts "\n"
    Designer.list_designers
    id = gets.chomp.to_i
    puts "\n"
    puts "To what title?"
    title = gets.chomp.to_s
    Designer.promotions(id, title)
    puts "\n"
    puts "Updated Designer list:"
    puts "\n"
    Designer.list_designers
    puts "\n"
end

def assign_a_designer
    puts "We have a Project that needs to be assigned to a Designer."
    Project.show_project_with_no_designer
    puts "\n"
    puts "Here is list of all the Designers:"
    puts "\n"
    Designer.list_designers
    puts "\n"
    puts "Select a Project ID:"
    puts "\n"
    proj_id = gets.chomp.to_i
    puts "Provide a Designer's ID:"
    puts "\n"
    dsgn_id = gets.chomp.to_i
    puts "\n"
    Project.assign_designer(proj_id, dsgn_id)
    puts "\n"
    puts "Updated Project List:"
    puts "\n"
    Project.list_projects
    puts "\n"
end

