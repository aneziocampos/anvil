# Anvil

## API version support

This client supports Conviso Armature

## Installation

The Anvil can be installed using Rubygems or Bundler.

### Rubygems

```sh
gem install armature_anvil
```

### Bundler

Add it to your Gemfile

    gem "armature_anvil"

and follow normal [Bundler](http://gembundler.com/) installation and execution procedures.

## Usage

You will use an instance of Anvil::Client with your api code and environment (production, staging) as parameters.

```ruby
client = Anvil::Client.new('my_api_code', 'staging')
```

```ruby
client.vulnerabilities.create!([name: 'name', description: 'description'])
```
