# if Rails.env.test?
  class FakeBillingApp < Sinatra::Base
    post '/billing/cucumber-test/billing_info' do
      # register billing
      redirect '/purchases'
    end
  end
# end
