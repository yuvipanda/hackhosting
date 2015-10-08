class hillhacks {
    dokuwiki { 'wiki.hillhacks.in':
    }

    dokuwiki::plugin { [
        'blockquote',
        'bureaucracy',
        'captcha',
        'creole',
        'data',
        'edittable',
        'editx',
        'folded',
        'include',
        'pagelist', # required by 'tag'
        'sidebarng',
        'sqlite', # required by 'data'
        'tablecalc', # Not a submodule, just in git
        'tag', # required by 'include'
        'twitter',
    ]:
        hostname => 'wiki.hillhacks.in',
        require  => Dokuwiki['wiki.hillhacks.in'],
    }
}
