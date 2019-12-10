def find_item_by_name_in_collection(name, collection)
  collection.length.times do |index|
    if collection[index][:item] == name
      return collection[index]
    end 
  end
  return nil
end

def return_index(name, collection)
  collection.length.times do |index|
    if collection[index][:item] == name
      return index 
    end 
  end
end 

def consolidate_cart(cart)
  #create empty cart, which will be returned
  fixed_cart = []
  cart.length.times do |index| #iterate through the argument
    #call the find_item method and atrib the return to a var 
    item = find_item_by_name_in_collection(cart[index][:item], fixed_cart)
    if !item #if the returned value is nil means that we don't have the item yet
      #create a new entry and add a value of 1 to :count
      fixed_cart.push(cart[index])
      fixed_cart[-1][:count] = 1
    else #which means that the item is already in the cart 
      #call method return_index to find out in what index the item is 
      index_where_item_is = return_index(cart[index][:item], fixed_cart)
      #add 1 to count
      fixed_cart[index_where_item_is][:count] += 1
    end
  end 
  fixed_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
