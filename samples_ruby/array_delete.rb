def array_delete(arr, delete_value)
  element = arr[delete_value] 
  arr.delete(element)
  if element == nil
     "The value at position #{delete_value} does not exist"
  else
     arr
  end
end


  # Your code goes here!
  # Directions: arr is an array, delete_value is a position in the array
  #  Delete the value located in delete_value position.
  # Example: arr = [1, 2, 3] delete_value = 0.
  #   The answer is [2, 3] because [1] was deleted from arr
  # Hint, do not use puts!
  
  
#Step 1

#Find the element at delete_value

#Step 2

