require "bundler/setup"
Bundler.require
@@items = [
    {name: "Learn Form element", status: "done"},
    {name: "Learn Sinatra params", status: "undone"}
  ]

get "/" do
  erb :"index.html", locals: {items: @@items}
end

# This means go to the page /submit and add the parameter {name}
post "/submit" do 

  p params
  new_item = {name: params["item_name"], status: "undone"}
  p @@items
  @@items << new_item
  p @@items

  erb :"index.html", locals: {items: @@items}

end


