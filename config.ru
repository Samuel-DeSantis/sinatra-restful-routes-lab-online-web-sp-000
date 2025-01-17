require './config/environment'

use Rack::MethodOverride

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride #=> Middleware for PATCH, PUT, & DELETE

run ApplicationController
