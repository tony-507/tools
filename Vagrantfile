Vagrant.configure("2") do |config|
	config.vm.provider :docker do |d|
		d.image = "tony57/tchan-cde"
#d.build_dir = "./CDE"
		d.remains_running = true
		d.has_ssh = true
	end
end
