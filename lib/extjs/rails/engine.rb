module ExtJS
  module Rails
    class Engine < ::Rails::Engine
      
      config.extjs_theme = 'default'
      
      initializer 'exttjs.theme_init_task',
      :after => 'sprockets.environment',
      :group => :all do |app|
        app.config.assets.paths << File.expand_path('../../../../extjs/assets/images/'+config.extjs_theme, __FILE__)
      end
    end
  end
end
