require "bundler/setup"
Bundler.require

get "/" do
  
  lines = File.read("todo.data").split("\n")
  items = lines.map do |line|
    status = line[3] == "x" ? "done" : "undone"
    name = line[6..-1]
    #
    item = {name: name, status: status}
    
  end
  
  erb :"index.html", locals: {items: items}
end

# This means go to the page /submit and add the parameter {name}
post "/submit" do 
  
  p params
  variables = params
  new_item = {name: params["item_name"], status: "undone"}
  
  
  File.open("todo.data", "a") do |f|
    f << "\n"
    f << "- [ ] " + new_item[:name]
  end
  
  
  redirect to("/")
  
end


