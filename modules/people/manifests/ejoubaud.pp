class people::ejoubaud {
  $home     = "/Users/${::boxen_user}"

  include brewcask

  $caskpackages = [
    'alfred',
    'bettertouchtool',
    'dropbox',
    'firefox',
    'filezilla',
    'google-chrome',
    'licecap',
    'mplayerx',
    'selfcontrol',
    'skype',
    'sequel-pro',
    'vlc',
  ]

  package { $caskpackages:
    provider => 'brewcask',
  }

  package { 'mackup':
    ensure => present,
  }

  include iterm2::stable
  include github_for_mac
  include gitx::l
  include vagrant

  include sublime_text

  sublime_text::package {
    'SideBarEnhancements':        source => 'titoBouzout/SideBarEnhancements';
    'GitHubinator':               source => 'ehamiter/ST2-GitHubinator';
    'Shell-Turtlestein':          source => 'misfo/Shell-Turtlestein';
    'ExpandSelectionByParagraph': source => 'natew/ExpandSelectionByParagraph';
    'stringutilities':            source => 'akalongman/sublimetext-stringutilities';
    'ChangeQuotes':               source => 'colinta/SublimeChangeQuotes';
    'Puppet':                     source => 'russCloak/SublimePuppet';
    'Stylus':                     source => 'billymoon/Stylus';
    'Sass':                       source => 'nathos/sass-textmate-bundle';
    'Jade':                       source => 'davidrios/jade-tmbundle';
    'HAML':                       source => 'phuibonhoa/handcrafted-haml-textmate-bundle';
    'Better CoffeeScript':        source => 'aponxi/sublime-better-coffeescript';
    'SSH Config':                 source => 'robballou/sublimetext-sshconfig';
    'Cucumber':                   source => 'ejoubaud/cucumber-sublime-bundle'; # TODO: Revert to original when they merge the st3 branch to master, or when Boxen repository supports branches.
    'cucumber-step-finder':       source => 'danielfrey/sublime-cucumber-step-finder';
  }
}
