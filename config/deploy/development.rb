set :rails_env, 'development'
set :branch, 'development'
set :deploy_to, '/srv/rails/atmatr'

server '3.83.122.61',
user: 'deploy',
roles: %w{app db web}