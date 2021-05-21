# Sessions and Authentication

In this lesson, we'll be looking at the mechanisms by which you can identify your users with each request.

## Agenda


## Authentication

* What is authentication?
* Difference between authentication (authn) and authorization (authz)
* Encryption
* Hashing
* Difference between Encryption and Hashing
* Salting

* [bcrypt](https://github.com/codahale/bcrypt-ruby) gem
* Rails [`has_secure_password`](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html) method
* Manual example of authentication

## Sessions

* Stateless nature of HTTP
* What is a session?
* What is a cookie?

## Code Example

* `User` model with password_digest
* Install `bcrypt` gem
* Use of `has_secure_password`
* Manual authentication in Rails console
* Signing up for the app with `UsersController#new` `UsersController#create`
*
* Singular `resource` vs plural `resources` in routes.rb


## Authentication Libraries

* To be investigated independently
* Can do things like Resetting Passwords, which must be carefully managed as passwords should not be sent in cleartext in email.
* [`sorcery`](https://github.com/Sorcery/sorcery): Recommended for those just starting out with authentication
* [`devise`](https://github.com/plataformatec/devise): More advanced. Quote from the [docs](https://github.com/plataformatec/devise#starting-with-rails): 
  
> If you are building your first Rails application, we recommend you do not use Devise. Devise requires a good understanding of the Rails Framework. ... Once you have solidified your understanding of Rails and authentication mechanisms, we assure you Devise will be very pleasant to work with.

* [`has_secure_password` Documentation](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html)