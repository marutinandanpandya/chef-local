module ChefSecret

  def find_data_keys(key)
    bag = 'base-server'
    item = node[:data_bag_item]
    db = data_bag(bag)
    if db.include?(item) && data_bag_item(bag, item).include?(key)
      Chef::EncryptedDataBagItem.load(bag, item)[key]
    end
  end
end
