module SpreeAuthDevise
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_auth_devise'
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'bundle exec rake db:migrate'
         else
           puts "Skipping rake db:migrate, don't forget to run it!"
         end
      end

      def create_admin_user
        res = ask "Creat admin user? [Y/n]"
        if res == "" || res.downcase == "y"
          run 'bundle exec rake spree_auth:admin:create'
        end
      end
    end
  end
end