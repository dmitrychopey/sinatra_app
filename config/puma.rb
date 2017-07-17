workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

persistent_timeout 10
worker_timeout 15
worker_shutdown_timeout 8

preload_app! if ENV['RACK_ENV'] != 'development'

rackup      DefaultRackup
port        ENV['PORT'] || 3003
environment ENV['RACK_ENV'] || 'development'
