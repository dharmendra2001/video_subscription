require 'stripe'
class StripeService 
  def initialize()
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
  end

  def find_or_create_customer(user)
    if user.stripe_customer_id.present?
      stripe_customer = Stripe::Customer.retriev(user.stripe_customer_id)
    else
      stripe_customer = Stripe::Customer.create({
        email: user.email,
        name: user.name
      })
      user.update(stripe_customer_id: stripe_customer.id)
    end
    stripe_customer
  end
end
