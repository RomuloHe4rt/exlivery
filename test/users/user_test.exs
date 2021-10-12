defmodule Exlivery.Users.UserTest do
  use ExUnit.Case

  alias Exlivery.Users.User

  import Exlivery.Factory

  describe "build/5" do
    test "when all params are alid, returns the user" do
      response =
        User.build(
          "Rua das Bananeiras, 35",
          "Rômulo",
          "romulo@banana.com",
          "12345678900",
          22
        )

      expected_response = {:ok, build(:user)}

      assert response == expected_response
    end

    test "when there are invalid params, returns an error" do
      response =
        User.build(
          "Rua das bananeiras",
          "Rômulo Jr",
          "romulo@banana.com",
          "123456789",
          15
        )

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
