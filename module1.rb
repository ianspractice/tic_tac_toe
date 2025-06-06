def delete_choice(array, element)
  array.delete(element)
  array
end

p delete_choice([1, 2, 3, 4], 3)