require 'confirm_deploy/version'
require 'capistrano/configuration'

Capistrano::Configuration.instance(:must_exist).load do
  namespace :deploy do
    desc "Prompts user to confirm deploy"
    task :confirm do
      message = fetch(:confirm_message, "Are you sure you want to deploy?")
      answer = fetch(:confirm_answer, "yes")

      unless Capistrano::CLI.ui.ask("  #{message} (#{answer}): ") == answer
        logger.important "Deploy cancelled!"
        abort
      end
    end
    before "deploy:update_code", "deploy:confirm"
  end
end
