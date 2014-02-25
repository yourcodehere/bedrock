set :stage, :staging
server 'yourcodehere.com', user: 'doug', roles: %w{web app db}
fetch(:default_env).merge!(wp_env: :staging)

