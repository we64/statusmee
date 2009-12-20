# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_app_connect_session',
  :secret      => '55a591ecb0d7cf3bff512ca1dc76fa7df32834c47b3fed2ed381ee3a0b4ab894fb9e069a355aeb51e115facfa2c3f79b4df3a4cd1c5a22b56dc2d75ab09cec92'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
