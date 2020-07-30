
def greeting
    puts "Welcome to our Design Studio Information Center!"
    puts "\n"
end

def choose_option
    puts "\n"
    puts "Choose from the following options:"
    puts "**********************************"
    puts "1. List all our Designers"
    puts "2. List all our Clients"
    puts "3. List all our Projects"
    puts "4. Add new designer"
    puts "5. Delete new designer"
    puts "6. Promotion Day"
    puts "7. Assign a Designer to a Project"
    puts "8. List of all the Designers specialize in Commercial Projects:"
    puts "\n"
    puts "9. Exit"
    puts "**********************************"
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
            Designer.list_designers
        when 2
            Client.list_clients
        when 3
            Project.list_projects
        when 4
            new_designer
        when 5
            delete_new_designer
        when 6
            promotion
        when 7
            assign_a_designer
        when 8
            Designer.designer_sepcialty_list("Commercial")
        when 9
            exit_program
            break
        else
            # puts "Pʟᴇᴀsᴇ ᴛʀʏ ᴀɢᴀɪɴ."

                  
            puts "█▀█ █░░ █▀▀ ▄▀█ █▀ █▀▀   ▀█▀ █▀█ █▄█   ▄▀█ █▀▀ ▄▀█ █ █▄░█ ░"
            puts "█▀▀ █▄▄ ██▄ █▀█ ▄█ ██▄   ░█░ █▀▄ ░█░   █▀█ █▄█ █▀█ █ █░▀█ ▄"

            
            action
        end
    end
end

def new_designer
    puts "Enter new designer name:"
    name = gets.chomp.capitalize
    puts "Enter new designer's title:"
    title = gets.chomp.capitalize
    puts "Enger new designer's specialty:"
    specialty = gets.chomp.capitalize
    Designer.add_designer(name, title, specialty)
    puts "\n"
    Designer.list_designers
end

def delete_new_designer
    puts "Enter a Designer's ID to delete from the list below:"
    puts "\n"
    Designer.list_designers
    id = gets.chomp.to_i
    Designer.delete(id)
    puts "\n"
    Designer.list_designers
    puts "\n"
end

def promotion
    puts "It's a promotion day! Who would you like to promote?"
    puts "Here is the list of all the designers. Please select an ID:"
    puts "\n"
    Designer.list_designers
    id = gets.chomp.to_i
    puts "\n"
    puts "To what title?"
    title = gets.chomp.to_s
    Designer.promotions(id, title)
    puts "\n"
    puts "Here is our updated Designer List:"
    puts "\n"
    Designer.list_designers
    puts "\n"
end

def assign_a_designer
    puts "We just got a new project."
    Project.show_project_with_no_designer
    puts "\n"
    puts "Here is list of all the Desginers:"
    puts "\n"
    Designer.list_designers
    puts "\n"
    puts "Let's assign a Designer to this Project. Select a Project ID:"
    puts "\n"
    proj_id = gets.chomp.to_i
    puts "Provide a Designer ID:"
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

