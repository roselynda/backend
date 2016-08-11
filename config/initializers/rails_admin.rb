RailsAdmin.config do |config|

  config.authenticate_with do
    # Use sorcery's before filter to auth users
    # require_login
  end
  config.current_user_method(&:current_user)

  # model config
  config.model Component do
    edit do
      
      include_all_fields
      exclude_fields :created_at, :updated_at
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
