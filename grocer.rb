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
  temp = cart
  pp coupons
  i = 0
  while temp[i] do
    
    if ((temp[i][:item] == coupons[j][:item]) && (temp[i][:count] >= coupons[0][:num]))
      then 
      p temp[i][:count]
      p "working"
      p temp[i][:count]-coupons[j][:num]
      temp[i][:count] = (temp[i][:count]-coupons[0][:num])
      p temp[i][:count]
      temp << {
        :item => (temp[i][:item] + " W/COUPON"),
        :price => coupons[0][:price]/coupons[0][:num],
        :clearance => temp[i][:clearance],
        :count => coupons[0][:num]
      }
    end
    
      i+=1
    end
    
    pp temp
    return temp
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
