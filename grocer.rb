def find_item_by_name_in_collection(name, collection)
  i=0
  while collection[i] do
  return collection[i] if collection[i][:item] == name
  i+=1
  end

  return nil
end

def consolidate_cart(cart)
 result=[]
 i=0
 allitems[]
 while cart[i] do
   allitems[] << cart[i][:item]
   i += 1
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
