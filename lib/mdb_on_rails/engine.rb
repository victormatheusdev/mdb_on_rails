module MDB
  class Engine < ::Rails::Engine
    engine_name 'mdb_on_rails'
    initializer 'mdb_on_rails.assets' do |app|
      app.config.assets.paths << Rails.root.join("app", "assets", "fonts", "roboto")
    end
  end
end
