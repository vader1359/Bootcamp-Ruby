require "bundler/setup"
Bundler.require

get "/" do

  lines = File.read("todo.data").split("\n")
  items = lines.map.with_index do |line, index| 
    {
    status: (line[3] == "x") ? "done" : "undone",
    name: line[6..-1],
    index: index
  } 
  
end

erb :"index.html", locals: {items: items}
end

# This means go to the page /submit and add the parameter {name}
post "/submit" do 
  
  p params
  new_item = {name: params["item_name"], status: params["done"]}
  
  p ("new item: #{new_item}")
  
  File.open("todo.data", "a") do |f|
    if new_item[:status] == "true"
      f << "\n"
      f << "- [x] " + new_item[:name]
    else
      f << "\n"
      f << "- [ ] " + new_item[:name]
    end
  end
  
  
  redirect to("/")
  
end

post "/toggle" do
  p params.to_s
  
  lines = File.read("todo.data").split("\n")
  items = lines.map.with_index do |line, index| 
    {
    status: (line[3] == "x") ? "done" : "undone",
    name: line[6..-1],
    index: index
  } 
end

index = params["index"].to_i
items[index][:status] = "done"

File.open("todo.data", "w") do |f|
  items.each do |item|
    if item[:status] == "done"
      f << "- [x] " + item[:name]
      # item[:status] = "undone"
    else
      f << "- [ ] " + item[:name]
      # item[:status] = "done"
    end
    f << "\n"
  end
end

#erb :"index.html", locals: {items: items}
 redirect to("/")


end


