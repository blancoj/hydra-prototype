## README

MHydra (formerly HydraPrototype) is a  ‘Hydra Head’, Fedora-backed digital repository application.As the name says, it is only for the purpose of prototyping and exploratory purposes.  The application will be using the gems that are already released and will include development on gems that are in projecthydra-labs. 

## Installation

After cloning and running `bundle`:

```bash
$ bundle exec rake db:migrate
$ bundle exec rake prototype:install_sample_roles
$ bundle exec rake prototype:install_superusers_group
$ bundle exec rake prototype:install_superusers # see rake task for sample users
```

The installed roles are admin, collection.manager, collection.depositor.

After setup, you can do:

```bash
$ bundle exec rake prototype:add_role['my.new.role']
$ bundle exec rake prototype:add_group['my.new.group','my.new.role']
$ bundle exec rake prototype:add_user['user@example.com','password','my.new.group']
# if password is blank ('') then it will be "mgloblue!"
$ bundle exec rake prototype:add_role_to_user['my.new.role','user@example.com']
$ bundle exec rake prototype:add_role_to_group['my.new.role','my.new.group']
$ bundle exec rake prototype:add_user_to_group['user@example.com','my.new.group']
```

Permissions are poorly defined in `app/models/ability.rb`; feel free to customize.

----

To contribute in the development, please follow the Github Workflow document on Wiki page: https://github.com/mlibrary/hydra-prototype/wiki/Git-Workflow

