# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_StaffHolidays_session',
  :secret      => '703c351d42732c819115d58a1ee0e2ea1cedd33f1531e59fde27840f665596f2325b66960426084439852800f0ff5a8a3f758489518850cb65f85b7136f654e0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
