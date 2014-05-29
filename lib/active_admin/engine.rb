module ActiveAdmin
  class Engine < ::Rails::Engine
    initializer "ActiveAdmin precompile hook", group: :all do |app|
      app.config.assets.precompile += %w(active_admin.js active_admin.css active_admin/print.css)
      # TODO: why doesn't appending to app.config.autoload_paths work?
      ActiveSupport::Dependencies.autoload_paths += [File.expand_path(File.join(__FILE__, '../..'))]
    end
  end
end
