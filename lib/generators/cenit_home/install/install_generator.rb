module CenitHome
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file 'vendor/assets/javascripts/cenit/frontend/all.js', "//= require cenit/frontend/cenit_home\n"
        append_file 'vendor/assets/javascripts/cenit/backend/all.js', "//= require cenit/backend/cenit_home\n"
      end

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/cenit/frontend/all.css', " *= require cenit/frontend/cenit_home\n", before: %r{\*\/}, verbose: true
        inject_into_file 'vendor/assets/stylesheets/cenit/backend/all.css', " *= require cenit/backend/cenit_home\n", before: %r{\*\/}, verbose: true
      end
    end
  end
end
