if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, 
        key: "_authentication_app", 
        domain: "[insert heroku url here]" #once this is ready on Heroku, add link here
else 
    Rails.application.config.session_store :cookie_store, 
        key: "_authentication_app"
end