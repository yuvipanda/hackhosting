class standard::apache {
    class { '::apache':
        mpm_module    => 'prefork',
        default_vhost => false,
    }

    include ::apache::mod::php
}

class standard::packages {
    ensure_packages([
        'git',
        'vim',
    ])
}
