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

 i=0
 while cart[i] do
   allitems << cart[i][:item]
   i += 1
 end
 
 i=0
 while cart[i] do
   result << {
     :item => cart[i][:item], 
     :price => cart[i][:price], 
     :clearance => cart[i][:clearance], 
     :count => allitems.count(cart[i][:item])
   }
   i += 1
 end
 return result.uniq
 end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  pp cart
  pp coupons
  j = 0
  while coupons[j] do
  i = 0
  while cart[i] do
    while (cart[i][:item] == coupons[j][:item]) && (cart[i][:count] >= coupons[j][:num])
      do 
      cart[i][:count] = (cart[i][:count] - coupons[j][:num])
      cart << {
        :item => "#{cart[i][:item]} W/COUPON",
        :price => coupons[j][:price]/coupons[j][:num],
        :clearance => cart[i][:clearance],
        :count => coupons[j][:num]
      }
    end
      i+=1
    end
  j += 1
  end
    pp cart
    return cart
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
