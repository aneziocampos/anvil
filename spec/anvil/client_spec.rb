require 'anvil/client'

describe Anvil::Client do
  describe '.initialize' do
    context 'with proper params' do
      it do
        expect(Anvil::Client.new('foobar', 'production'))
          .to be_an_instance_of Anvil::Client
      end

      it do
        expect(Anvil::Client.new('foobar', 'production').base_url)
          .to eq 'https://app.conviso.com.br'
      end

      it do
        expect(Anvil::Client.new('foobar', 'staging').base_url)
          .to eq 'https://homologa.conviso.com.br'
      end
    end

    context 'with invalid environment' do
      it do
        expect { Anvil::Client.new('foobar', 'wrong_env') }
          .to raise_error ArgumentError
      end
    end
  end

  describe '.vulnerabilities' do
    let(:client) { Anvil::Client.new('foobar', 'staging') }

    it do
      expect(client.vulnerabilities.create!(foo: 'foo', bar: 'bar'))
        .to eq 'creating vulnerability'
    end
  end
end
