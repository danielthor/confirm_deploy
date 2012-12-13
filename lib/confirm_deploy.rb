require 'capistrano/configuration'

Capistrano::Configuration.instance(:must_exist).load do
  namespace :deploy do
    desc "Prompts user to confirm deploy"
    task :confirm do
      unless Capistrano::CLI.ui.ask("  Are you sure you want to deploy? (yes): ") == 'yes'
        logger.important "Deploy cancelled!"
        exit
      end
    end
    before "deploy:update_code", "deploy:confirm"
  end
end