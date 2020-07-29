Designer.destroy_all
Client.destroy_all
Project.destroy_all


jina = Designer.create(name: "Jina", title: "Senior Designer", specialty: "Commercial")
andrew = Designer.create(name: "Andrew", title: "Project Manager", specialty: "Healthcare")
joey = Designer.create(name: "Joey", title: "Junior Designer", specialty: "Commercial")
anna = Designer.create(name: "Anna", title: "Project Manager", specialty: "Healthcare")
becca = Designer.create(name: "Becca", title: "Partner", specialty: "Commercial")

flat = Client.create(name: "Flat Real Estate", sector: "Commercial", location: "Arlington VA")
e_gency = Client.create(name: "E-Gency", sector: "Healthcare", location: "Washington DC")
ironflat = Client.create(name: "Ironflat", sector: "Commercial", location: "Washington DC")
hash_pital = Client.create(name: "Hash-Pital", sector: "Healthcare", location: "Fairfax VA")

flat_reno = Project.create(designer_id: jina.id, client_id: flat.id, name: "Flat Renovation", category: "Commercial", size: "50,000 SF", location: "Arlington VA")
e_gency_hospital = Project.create(designer_id: andrew.id, client_id: e_gency.id, name: "E-Gency Hospital", category: "Healthcare", size: "250,000 SF", location: "Washington DC")
ironflat_reno = Project.create(designer_id: joey.id, client_id: ironflat.id, name: "Ironflat Restroom Renovation", category: "Commercial", size: "5,000 SF", location: "Washington DC")
hash_pital_children = Project.create(designer_id: anna.id, client_id: hash_pital.id, name: "Hash-Pital Children Center Renovation", category: "Healthcare", size: "10,000 SF", location: "Fairfax VA")
hash_pital_reno = Project.create(designer_id: becca.id, client_id: hash_pital.id, name: "Hash-Pital Renovation", category: "Healthcare", size: "100,000 SF", location: "Fairfax VA")
