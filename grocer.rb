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
 allitems = []
 pp cart
 
 i=0
 while cart[i] do
   allitems << cart[i][:item]
   i += 1
 end
 
 pp allitems
 
 i=0
 while cart[i] do
   result << {
     :item => cart[i][:item], 
     :price => cart[i][:price], 
     :clearence => if cart[i][:clearence] then true else false, 
     :count => allitems.count(cart[i][:item])
   }
   i += 1
 end
 pp result.uniq
 return result.uniq
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
