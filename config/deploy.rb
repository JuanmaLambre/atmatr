set :application,     'atmatr'
set :repo_url,        'git@github.com:JuanmaLambre/atmatr.git'
set :deploy_to, '/srv/rails/atmatr'
set :keep_releases, 2
set :linked_dirs, fetch( :linked_dirs, [] ).push( 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'public/uploads' )
set :linked_files, fetch( :linked_files, [] ).push( 'config/database.yml')