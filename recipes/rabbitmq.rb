node.default['rabbitmq']['enabled_users'] = [node['rabbitmq']['rogue_user']]
node.default['rabbitmq']['port'] = '5672'
node.default['rabbitmq']['address'] = '127.0.0.1'


include_recipe 'rabbitmq'
include_recipe 'rabbitmq::user_management'
