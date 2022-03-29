machines = {
    puppetca  = { ip = "10.0.8.7",  server_type = "cx21", image = "centos-stream-8" }
    puppet    = { ip = "10.0.8.8",  server_type = "cx21", image = "centos-stream-8" }
    puppetdb  = { ip = "10.0.8.9",  server_type = "cx11", image = "centos-stream-8" }
    # ELK
    kibana    = { ip = "10.0.8.11", server_type = "cx11", image = "centos-stream-8" }
    elastic01 = { ip = "10.0.8.12", server_type = "cx11", image = "centos-stream-8" }
    elastic02 = { ip = "10.0.8.13", server_type = "cx11", image = "centos-stream-8" }
    elastic03 = { ip = "10.0.8.13", server_type = "cx11", image = "centos-stream-8" }
}
