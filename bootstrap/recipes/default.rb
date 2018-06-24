cookbook_file "/tmp/nfs.sh" do
  source "nfs.sh"
  mode 0755
end

execute "nfs.sh" do
  user "root"
  cwd "/tmp"
  command "./nfs.sh"
end


