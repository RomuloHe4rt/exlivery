defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User

  def user_factory do
    %User{
      name: "Rômulo",
      email: "romulo@banana.com",
      cpf: "12345678900",
      age: 22,
      address: "Rua das Bananeiras, 35"
    }
  end
end
