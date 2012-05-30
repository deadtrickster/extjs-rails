module ExtJS
  module Rails
    class Engine < ::Rails::Engine
      
      config.extjs.theme = 'default'
      
      initializer 'exttjs.theme_init_task',
      :after => 'less-rails.after.load_config_initializers',
      :group => :all do |app|
        environment = Sprockets::Environment.new
        environment.append_path 'images/extjs/'+config.extjs.theme
      end
    end
  end
end
