Unsplash.configure do |config|
    config.application_access_key = "IxILOxNvWo6cib8pxWCzhypHFykKpKGB27s7oRFkYBo"
    config.application_secret = "fmqWNJ29RJ_V5N9p_Zrm1Q_HJ9WQNVW6iDeVDx3TSSw"
    config.application_redirect_uri = "https://your-application.com/oauth/callback"
    config.utm_source = "alices_terrific_client_app"
  
    # optional:
    config.logger = MyCustomLogger.new
  end