require 'lotus/model'
Dir["#{ __dir__ }/budget/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  adapter type: :memory, uri: 'memory://localhost/budget_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/budget_development.db'
  #    adapter type: :sql, uri: 'postgres://localhost/budget_development'
  #    adapter type: :sql, uri: 'mysql://localhost/budget_development'
  #
  # adapter type: :file_system, uri: ENV['BUDGET_DATABASE_URL']

  ##
  # Database mapping
  #
  # You can specify mapping file to load with:
  #
  mapping "#{__dir__}/config/mapping"
  #
end.load!
