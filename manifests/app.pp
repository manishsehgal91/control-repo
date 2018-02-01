node 'node1' {

notify {" ****** Node1 Block *****":}


include java::install

class {'::tomcat':
user          => 'tomcat',
group         => 'root',
service_state => 'running',
}



}

node 'node2' {

notify {" ****** Node2 Block *****":}


include java::install
class {'::tomcat':
user          => 'root',
group         => 'root',
service_state => 'running',
}


}

node default {

notify{"checkpoint_1":

message => "***default Block****"

}

}