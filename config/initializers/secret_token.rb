# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Tenant::Application.config.secret_key_base = 'a51cb468d510e687ca5f96880459d307b6f273936c3298124fb2ef971b2f489daa99f61c76618ef9771d4e59d074b34cd1ed435b88e3a81e5db747ff8bbd383a'
