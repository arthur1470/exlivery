defmodule Exlivery.Factory do
  use ExMachina
  alias Exlivery.Users.User
  alias Exlivery.Orders.{Order, Item}

  def user_factory do
    %User{
      name: "Arthur",
      email: "arthur@email.com",
      cpf: "12345678900",
      age: 27,
      address: "Rua das bananeiras, 35"
    }
  end

  def item_factory do
    %Item{
      category: :pizza,
      description: "Pizza de peperoni",
      quantity: 1,
      unity_price: Decimal.new("35.5")
    }
  end

  def order_factory do
    %Order{
      delivery_address: "Rua das bananeiras, 35",
      items: [
        build(:item)
      ],
      total_price: Decimal.new("35.50"),
      user_cpf: "12345678900"
    }
  end
end
