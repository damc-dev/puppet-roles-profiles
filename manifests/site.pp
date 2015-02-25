import "profiles"
import "roles"
import "nodes"

filebucket { main: server => puppet }

# global defaults
File { backup => main }
Exec { path => "/usr/bin:/usr/sbin/:/bin:/sbin" }

Package {
    provider => $operatingsystem ? {
	ubuntu => aptitude,
	Ubuntu => aptitude,
        debian => aptitude,
        redhat => up2date,
    }
}
