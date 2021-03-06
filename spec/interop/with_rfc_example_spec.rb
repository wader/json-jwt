require 'spec_helper'

describe 'interop' do
  describe 'with RFC Example' do
    describe 'JWK Thubmprint' do
      subject { JSON::JWK.new public_key }

      let(:public_key) do
        JSON::JWK.decode(
          kty: :RSA,
          n: '0vx7agoebGcQSuuPiLJXZptN9nndrQmbXEps2aiAFbWhM78LhWx4cbbfAAtVT86zwu1RK7aPFFxuhDR1L6tSoc_BJECPebWKRXjBZCiFV4n3oknjhMstn64tZ_2W-5JsGY4Hc5n9yBXArwl93lqt7_RN5w6Cf0h4QyQ5v-65YGjQR0_FDW2QvzqY368QQMicAtaSqzs8KJZgnYb9c7d0zgdAZHzu6qMQvRL5hajrn1n91CbOpbISD08qNLyrdkt-bFTWhAI4vMQFh6WeZu0fM4lFd2NcRwr3XPksINHaQ-G_xBniIqbw0Ls1jF44-csFCur-kEgU8awapJzKnqDKgw',
          e: 'AQAB',
          alg: :RSA256,
          kid: '2011-04-29'
        )
      end
      its(:thumbprint) { should == 'NzbLsXh8uDCcd-6MNwXF4W_7noWXFZAfHkxZsRGC9Xs' }
    end
  end
end
