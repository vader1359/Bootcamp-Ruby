def spr
	puts "\n" + "=" * 10 + "\n\n"
end

require "erb"

item1 = {name: "Learn ERB", priority: "High"}
template = "Task <%= item1[:name]%> has a <%= item1[:priority]%> priority "
puts ERB.new(template).result(binding)

spr

items = [
{name: "Attend lectures", done: true},
{name: "Do labs", done: true},
{name: "Build stuff", done: false},
{name: "Learn erb", done: false},
{name: "Learn sinatra", done: true}
]

items.each {|item| p item}

template = %{
<% items.each do |item| %><% if item[:done] %>
	[x] <%= item[:name] %><% else %>
	[ ] <%= item[:name] %><% end %>
	<% end %> 
}

puts ERB.new(template).result(binding)