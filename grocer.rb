def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0 
  while i < collection.length
  if collection[i][:item] == name
    return collection[i]
  end
  i += 1
  end
end

def consolidate_cart(cart)

  empty_cart = []
  i = 0
  while i < cart.length
<<<<<<< HEAD
   new_cart_item  = find_item_by_name_in_collection(cart[i][:item], empty_cart)
   if new_cart_item != nil
     new_cart_item[:count] += 1
  else
    new_cart_item = {
=======
   new_item_in_cart  = find_item_by_name_in_collection(cart[i][:item], empty_cart)
   if new_item_in_cart != nil
     new_item_in_cart[:count] += 1
  else
    new_item_in_cart = {
>>>>>>> c8d6db2e328ba4a05d1c203118b03213d861635b
      :item => cart[i][:item],
      :price => cart[i][:price],
      :clearance => cart[i][:clearance],
      :count => 1
    }
<<<<<<< HEAD
  empty_cart << new_cart_item 
  end
  i += 1
 end
 empty_cart
=======
  empty_cart << new_item_in_cart 
>>>>>>> c8d6db2e328ba4a05d1c203118b03213d861635b
end
i += 1
end
emtpy_cart
end



def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
<<<<<<< HEAD
 i = 0 
 while i < coupons.length
  cart_item = find_item_by_name_in_collection(coupons[i][:item], cart)
  couponed_item_name = "#{coupons[i][:item]} W/COUPON"
  cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
  if cart_item && cart_item[:count] >= coupons[i][:num]
    if cart_item_with_coupon
      cart_item_with_coupon[:count] += coupons[i][:num]
      cart_item[:count] -= coupons[i][:num]
    else
      cart_item_with_coupon = {
        :item => couponed_item_name,
        :price => coupons[i][:cost] / coupons[i][:num],
        :count => coupons[i][:num],
        :clearance => cart_item[:clearance]
      }
      cart << cart_item_with_coupon
      cart_item[:count] -= coupons[i][:num]
    end
  end
  i += 1
 end
 cart
=======
 counter = 0 
 while counter < coupons.length
  cart_item = find_item_by_name_in_collection(coupons)[counter][:item], cart)
  couponed_item_name = "#{coupons[counter][:item]} W/ COUPON"
  cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
    if cart_item && cart_item[:count] >= coupons[counter][:num]
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += coupons[counter][:num]
          cart_item[:count] -= coupons[counter][:num]
      else
          cart_item_with_coupon = {
            :item => couponed_item_name,
            :price => coupons[counter][:cost] / coupons[counter][:num],
            :count => coupons[counter][:num],
            :clearance => cart_item[:clearance]
          }
        cart << cart_item_with_coupon
        cart_item[:count] -= coupons[counter][:num]
      end
    end
    counter += 1
   end
  cart
>>>>>>> c8d6db2e328ba4a05d1c203118b03213d861635b
end


def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
<<<<<<< HEAD
 i = 0
 while i < cart.length
  if cart[i][:clearance]
    cart[i][:price] = (cart[i][:price] - (cart[i][:price] * 0.20)).round(2)
  end
  i += 1
 end
 cart
=======
 
>>>>>>> c8d6db2e328ba4a05d1c203118b03213d861635b
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
<<<<<<< HEAD
 consolidate_cart = consolidate_cart(cart)
 couponed_cart = apply_coupons(consolidate_cart, coupons)
 final_cart = apply_clearance(couponed_cart)
 
 total_number = 0
 i = 0
 while i < final_cart.length
  total_number += final_cart[i][:price] * final_cart[i][:count]
  i += 1
 end
 if total_number > 100
   total_number -= (total_number * 0.10)
 end
 total_number
=======
 
>>>>>>> c8d6db2e328ba4a05d1c203118b03213d861635b
end
