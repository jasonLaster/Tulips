# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Tulips_session',
  :secret      => '3bf8350284d2a0a1af3a79817b7084e211846d7b54908a7be0521ee5570a77f45ff879c33da2628d3b75317922ab04fd657e2c0c4db1df8db283f3361ec6ef25'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
