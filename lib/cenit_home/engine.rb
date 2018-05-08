module CenitHome
  class Engine < Rails::Engine
    isolate_namespace Cenit
    engine_name 'cenit_home'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end


    initializer :assets do |config|
      Rails.application.config.assets.precompile << %r(icons\.(?:eot|svg|ttf|woff)$)
      Rails.application.config.assets.precompile << %w( cenit/**/* )
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
