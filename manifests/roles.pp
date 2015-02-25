class role {
    include profile::base
}

class role::www inherits role {

}

class role::www::dev inherits role::www {
    include profile::webserver::dev
}
