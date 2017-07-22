require_relative "item"
require_relative "list"
require_relative "todo"

Item
  Item.new_from_line(line) -> Item
  .display -> String | Void
  .mark_done -> bool | Set
  .mark_undone -> bool | Set
  
List
  .display -> array | Void
  .add -> array | Set

Todo
  .load_data -> array of Item | Void
  .show_all -> array of Iem | Void
