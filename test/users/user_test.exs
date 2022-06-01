defmodule Exlivery.Users.UserTest do
  use ExUnit.Case
  alias Exlivery.Users.User

  describe "build/5" do
    test "when all params are valid, returns the user" do
      response =
        User.build(
          "Rua das bananeiras",
          "Arthur",
          "arthur@email.com",
          "123456789",
          27
        )

      expected_response =
        {:ok,
         %Exlivery.Users.User{
           address: "Rua das bananeiras",
           age: 27,
           cpf: "123456789",
           email: "arthur@email.com",
           name: "Arthur"
         }}

      assert response == expected_response
    end

    test "when there are invalid params, returns an error" do
      response =
        User.build(
          "Rua das bananeiras",
          "Arthur Jr",
          "arthur@email.com",
          "123456789",
          15
        )

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
