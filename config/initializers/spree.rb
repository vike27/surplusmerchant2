# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'


Spree.user_class = "Spree::User"

Spree.config do |config|
  # Spree 2.2 moved Paperclip settings out of the admin page, set 'em here:
  attachment_config = {
    s3_credentials: {
      access_key_id: ENV.fetch("AKIAJQP7OWOJ6AD6LDOQ"),
      secret_access_key: ENV.fetch("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"),
      bucket: ENV.fetch("surplusmerchant2bucket"),
    }
  }

  attachment_config.each do |key, value|
    Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
  end
end

