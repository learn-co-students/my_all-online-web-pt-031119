require 'pry'

# Writing a .all method (that will return true or false) 
# using yield instead of using bult in "higher level".all method.

# def my_all?(collection)
#     i = 0
#     while i < collection.length
#         yield(collection[i])
#       i += 1
#     end 
# end

# line 6 above yields collection[i] to the block that is given
# when the method is called on line. 

#my_all([1,2,3]) {|i| i < 2} 

# {|i| i < 2} is the block (code block).

# so, on line 6 above the "first element" in the "collection array"
# (collection[i]) is being yielded to the block (code block on line 14)
# that is given when the method is called.

# the return value of the block above is true, but we store
# the return values of each looping iteration below on line 29 

# def my_all(collection)
#     i = 0
#     block_return_values = []
#     while i < collection.length
#       block_return_values << yield(collection[i])
#       i += 1 
#     end 
# end

# The return value of all? is simply true or false.
# If any element in the collection evaluates to false, then all? 
# should return false.
# If they are all true, the method should return true.

# Using built in "higher level" .include to finish the method
# above and give the final return value.

def my_all?(collection) 
    i = 0
    block_return_values = []
    while i < collection.length
      block_return_values << yield(collection[i])
      i += 1 
    end
    if block_return_values.include?(false)
        false
    else 
        true 
    end  
end



