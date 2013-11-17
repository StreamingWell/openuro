# Be sure to restart your server when you modify this file.

Openmicrosite::Application.config.session_store :cookie_store, domain: :all, key: '_openmicrosite_session'

# Allow log in on all devices

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Openmicrosite::Application.config.session_store :active_record_store
