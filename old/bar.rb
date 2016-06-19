class Bar

  def initialize(menu)
    @menu = menu
  end

  def number_of_items_on_menu
    @menu.count()
  end

  def filter_refreshments_by_type(type)
    refreshment_type = @menu.select {|refreshment| refreshment.type == type}
    options = refreshment_type.map {|refreshment| refreshment}
    return options
  end

  def filter_refreshments_by_name(name)
    refreshment_name = @menu.select {|refreshment| refreshment.name == name}
    options = refreshment_name.map {|refreshment| refreshment}
    return options
  end

  def filter_refreshments_by_price(cash)
    refreshment_price = @menu.select {|refreshment| refreshment.price <= cash}
    options = refreshment_price.map {|refreshment| refreshment}
    return options
  end

end