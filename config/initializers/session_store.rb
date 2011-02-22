# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_signature_card_session',
  :secret      => '091588384b1620c0160b41357d4e543170938862eeb957c8f4a6cc9eec529501d2d3cfe04b3cd5cd9291be3552cbefc1c73c881be1cc0029e5fa7f780af5cb08'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
