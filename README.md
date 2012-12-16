# ConfirmDeploy

Simple capistrano recipe to get user(s) to confirm before deploying an app.

## Installation

Add this line to your application's Gemfile:

    gem 'confirm_deploy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install confirm_deploy

## Usage

Add to your capistrano deploy.rb

	require 'confirm_deploy'

## Customize

You can set the optional variables `confirm_message` and `confirm_answer` if you want: 

	set :confirm_message, "You know what you're doing?"
	set :confirm_answer, "yepp"

## Examples

Confirmed deploy:

	$ cap deploy
	  * 2012-12-15 14:52:11 executing `deploy'
	  * 2012-12-15 14:52:11 executing `deploy:update'
	 ** transaction: start
	  * 2012-12-15 14:52:11 executing `deploy:update_code'
	    triggering before callbacks for `deploy:update_code'
	  * 2012-12-15 14:52:11 executing `deploy:confirm'
	 ** Deploying...
	  Are you sure you want to deploy? (yes): yes
	...

Unconfirmed deploy:

	$ cap deploy
	  * 2012-12-15 14:52:11 executing `deploy'
	  * 2012-12-15 14:52:11 executing `deploy:update'
	 ** transaction: start
	  * 2012-12-15 14:52:11 executing `deploy:update_code'
	    triggering before callbacks for `deploy:update_code'
	  * 2012-12-15 14:52:11 executing `deploy:confirm'
	 ** Deploying...
	  Are you sure you want to deploy? (yes): no
	*** Deploy cancelled!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
