
node.override['cassandra']['package_name'] = 'cassandra'

case node['platform_family']
when 'rhel'
  yum_repository 'cassandra' do
      description 'Apache Cassandra'
      baseurl "https://www.apache.org/dist/cassandra/redhat/311x"
      action :create
      gpgcheck false
      enabled true
  end
end
