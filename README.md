# Anvil

## API version support

This client supports AppSec Flow

## Installation

The Anvil can be installed using Rubygems or Bundler.

### Rubygems

```sh
gem install appsec_flow_anvil
```

### Bundler

Add it to your Gemfile

    gem "appsec_flow_anvil"

and follow normal [Bundler](http://gembundler.com/) installation and execution procedures.

## Usage

You will use an instance of Anvil::Client with your api code and environment (production, staging) as parameters.

```ruby
client = Anvil::Client.new('my_api_code', 'staging')
```

And with the client instance you can create new vulnerabilities on AppSec Flow

```ruby
client.vulnerabilities.create!(client_impact: 'impact_here', project_id: 9999, vulnerability_model_id: 10,
  failure_type: 'others', others_protocol: 'http', others_host: 'www.mytest.com', others_vector: 'my vector', others_steps: 'first step, second step', evidences: ['/myfile/image.png'])
```
You can check the details on the accepted parameters here: [Vulnerability parameters details](https://github.com/aneziocampos/anvil/wiki/Vulnerability-Parameters)
