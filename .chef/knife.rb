current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                'devops'
client_key               "#{current_dir}/devops.pem"
#validation_client_name   'devops-validator'
#validation_key           '#{current_dir}/devops-validator.pem'
chef_server_url          'https://chef.example.com:443/organizations/devops/'
syntax_check_cache_path  '#{current_dir}/.chef/syntax_check_cache'
#ssl_verify_mode	:verify_none
trusted_certs_dir        "#{current_dir}/trusted_certs"
cookbook_path		[ "#{current_dir}/../cookbooks/" ]
