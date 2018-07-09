group 'zykluscomputing' do 
  action :create  
  gid '1001'
end
  
user 'zyklus' do
  uid '804'
  gid '1001'
  home '/home/zyklus'
  shell '/bin/bash'
  password 'test@123'
end
