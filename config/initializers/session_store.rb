# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_swamis_session',
  :secret      => '1f9a0f85c38f658c27c10461e10f383c2f00b1c58942b087f7eb14cfa56b96b94861698dca9f29ecec27d93b253f8d96c0243856112ec884700fe3801a76a955'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
