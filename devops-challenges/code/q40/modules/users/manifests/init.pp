class users {
    user { 'john':
        ensure     => present,
        managehome => true,
    }
}
