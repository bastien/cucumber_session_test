require 'test_helper'
require 'capybara/dsl'
require 'capybara/rails'

class PurchasesControllerTest < ActionController::TestCase
  include Capybara::DSL
  
  test "Keeping session data afer acessing remote server" do
    visit '/'
    click_button("Log in")
    click_button("Purchase")
    assert page.has_content?("Status: true"), "User is not logged in"
  end
end
