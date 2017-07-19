require'bundler/setup'
Bundler.require

get "/" do
  erb :"index.html", layout: :"layout.html"
end

get "/about" do
  name = "ian"
  name2 = "Tan"
  age = 12
  erb :"about.html", layout: :"layout.html", locals: {name: name }
end

get "/trello" do
  items = [
    {name: "Learn Strings", done: false},
    {name: "Learn Hash", done: true},
    {name: "Learn Variables", done: true},
    {name: "Learn Methods", done: true},
    {name: "Learn ERB", done: true},
    {name: "Learn Partials", done: true},
  ]
  erb :"trello.html", layout: :"layout.html", locals: {items: items}
end
