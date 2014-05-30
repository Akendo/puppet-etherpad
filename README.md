# Puppet-etherpad-lite

`puppet-etherpad-lite` installs etherpad lite and starts the nodejs
server. Afterwards you may define some additional services like
a reverse proxy for serving etherpad-lite via HTTPS.

## Usage

Basic usage

```
  class { 'etherpad': }
```


Example with a admin user, to use `/admin`

```
  class { 'etherpad':
      etherpad_users => {
        user1 => {
            password => "test",
            is_admin => "true"
           }
          }
         }
```
### Other class parameters

TODO: document class parameters

## Dependencies

    puppetlabs/apt
    puppetlabs/stdlib

## Contribute

Want to help - send a pull request.
