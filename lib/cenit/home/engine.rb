module Cenit
  module Home
    class Engine < ::Rails::Engine
      isolate_namespace Cenit::Home

      initializer :assets do |config|
        Rails.application.config.assets.precompile += %w( cenit/**/* )
      end
    end
  end
end
