require 'spec_helper'

describe 'httpd::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe command('curl http://localhost') do
  	its(:stdout) { should match(/Welcome Home/) }
  end
end

require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "httpd::default" do

  it "is listening on port 80" do
    expect(port(80)).to be_listening
  end

  it "has a running service of git-daemon" do
    expect(service("httpd")).to be_running
  end

end