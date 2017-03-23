class TodoList


 def initialize (string1)
  @string1 = string1
 end

 def get_items
    @string1
 end

 def add_item(mop)
    @string1 << mop
 end

 def delete_item(do_dishes)
 	@string1.delete (do_dishes)
 end

 def get_item(num)
	string =@string1[num]
	string
 end

end