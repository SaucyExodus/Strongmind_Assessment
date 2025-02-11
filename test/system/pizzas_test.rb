require "application_system_test_case"

class PizzasTest < ApplicationSystemTestCase
  setup do
    @pizza = pizzas(:one)
  end

  test "visiting the index" do
    visit pizzas_url
    assert_selector "h1", text: "Pizza List"
  end

  test "should create pizza" do
    visit pizzas_url
    click_on "New Pizza"

    fill_in "Name", with: "Cheese Pizza"
    click_on "Save Pizza"

    assert_text "Pizza was successfully created"
    click_on "Back"
  end

  test "should update Pizza" do
    visit pizza_url(@pizza)
    click_on "Edit", match: :first

    fill_in "Name", with: @pizza.name
    click_on "Save Pizza"

    assert_text "Pizza was successfully updated"
    click_on "Back"
  end

  test "should destroy Pizza" do
    visit pizza_url(@pizza)
    accept_alert do
      click_on "Delete", match: :first
    end

    assert_text "Pizza was successfully destroyed"
  end
end
