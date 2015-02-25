# templates.pp
# All server templates for various flavors of templates defined here

class profile::base {
    include 
	git,
	vim,
	sudo,
	'::ntp'

    git::config { 'user.name':
        value => 'David McElligott',
        require => Package['git'],
    }

    git::config { 'user.email':
        value => 'damc.dev@gmail.com',
        require => Package['git'],
    }
}

class profile::webserver {
    include nginx
}

class profile::webserver::dev inherits profile::webserver {
    # special sauce
}

