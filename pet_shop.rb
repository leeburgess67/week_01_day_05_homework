def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop,value)
  return pet_shop[:admin][:total_cash] += value
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]

end

def increase_pets_sold(pet_shop,no_of_pets_sold)
  return pet_shop[:admin][:pets_sold] += no_of_pets_sold
end

def stock_count(pet_shop)
  pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  pets = pet_shop[:pets]
  pets_filtered_by_breed = []
  for pet in pets
    if pet[:breed] == breed
      pets_filtered_by_breed << pet
    else
      return pets_filtered_by_breed
    end
  end
  return pets_filtered_by_breed
end

def find_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets]
  for pet in pets
    return pet if pet[:name] == pet_name
  end
  return nil
end

def remove_pet_by_name(pet_shop, name_to_delete)
  for pet in pet_shop[:pets]
  pet_shop[:pets].delete(pet) if pet[:name] == name_to_delete
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

def customer_cash(customer)
  return customer[:cash]
end

def   remove_customer_cash(customer, amount_to_remove)
  new_balance = customer[:cash] -= amount_to_remove
  return new_balance
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def add_pet_to_customer(customer, new_pet_array)
  customer[:pets].push(new_pet_array)
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def customer_can_afford_pet(customer, new_pet_array)
  return false if customer[:cash] < new_pet_array[:price]
return true
end


def sell_pet_to_customer(pet_shop_array, pet, customer)
  if pet == nil
    return
  end
  if customer_can_afford_pet(customer, pet) == false
    return
  end
  add_pet_to_customer(customer, pet)
  increase_pets_sold(pet_shop_array,1)
  remove_customer_cash(customer, pet[:price])
  add_or_remove_cash(pet_shop_array,pet[:price])
end




























  # @customers = [
  #   {
  #     name: "Craig",
  #     pets: [],
  #     cash: 1000
  #   },
  #   {
  #     name: "Zsolt",
  #     pets: [],
  #     cash: 50
  #   }
  # ]
