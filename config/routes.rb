CucumberSessionTest::Application.routes.draw do
  
  resource :session
  resources :purchases
  
  root :to => 'purchases#index'
  
  # if Rails.env.test?
    match "/billing/cucumber-test/billing_info", :to => FakeBillingApp
  # end
end
