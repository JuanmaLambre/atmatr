set :rails_env, 'development'
set :branch, 'development'
set :deploy_to, '/srv/rails/atmatr'

server '54.85.4.200',
user: 'deploy',
roles: %w{app db web}