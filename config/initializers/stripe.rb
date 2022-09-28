Stripe.api_key = 'sk_test_51LmkRbSETl6zkbL5NPtQiZVbGKGkn4hrtfLKUVDPsrTRXwlWx1LfECe5MuqJY0lWg24ScYNNPAcskKW7xCa3bt5T00omzjRzs5'
Stripe.api_key = Rails.application.credentials.dig(Rails.env.to_sym, :stripe, :secret)

# development:
#   stripe:
#     secret:
