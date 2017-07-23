require_relative "item"
require_relative "list"
require_relative "todo"

require "Bundler/setup"
Bundler.require



get "/" do
  p todo = Todo.new.show_all
  
  erb :"index.html", layout: :"layout.html", locals: {todo: todo}
end

post "/change_status" do
  puts params

  redirect to("/")
end