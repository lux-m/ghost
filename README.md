# ghost [![Version-shield]](CHANGELOG.md) ![Build-shield] [![Plugins-shield]](http://openghost.com/top-plugins)

[![Banner]](http://openghost.com/)

> Overview & full documentation available on http://openghost.com/

ghost.sh is a lightweight configurable multi-lang voice assistant  
Meant for home automation running on [slow computers](http://openghost.com/content/prerequisites) (ex: Raspberry Pi)  
Installs automatically [voice recognition](http://openjarvis.com/content/stt) & [speech synthesis](http://openghost.com/content/tts) egines of your choice  
Highly extendable thanks to a wide catalog of [community plugins](http://openghost.com/plugins)

Languages supported (for voice recognition and speech synthesis):  
:fr: :gb: :us: :es: :it: :de:

### Installation

See [Requirements](http://openghost.com/content/prerequisites).
```shell
$> git clone https://github.com/lux-m/ghost.git
$> cd ghost/
$> ./ghost.sh -i
```

### Usage
```
$> ghost
```
![App-menu]

[![Asciinema]](https://asciinema.org/a/3rydfvf0wmmdxydqyx0nuivvg)

### Command-line options
```shell
$> ghost -h
    Main options are accessible through the application menu

    -b  run in background (no menu, continues after terminal is closed)
    -c  overrides conversation mode setting (true/false)
    -i  install and setup wizard
    -h  display this help
    -j  output in JSON (for APIs)
    -k  directly start in keyboard mode
    -l  directly listen for one command (ex: launch from physical button)
    -m  mute mode (overrides settings)
    -n  directly start ghost without menu
    -p  install plugin, ex: ghost -p https://github.com/lux-m/ghost-time-master.git
    -q  quit ghost if running in background
    -r  uninstall ghost and its dependencies
    -s  just say something and exit, ex: ghost -s 'hello world'
    -u  force update ghost and plugins (ex: use in cron)
    -v  troubleshooting mode
    -w  no colors in output
    -x  execute order, ex: ghost -x "switch on lights"
```

### Support

http://openghost.com/content/support

### License

[![License-shield]](LICENSE.md)

<!-- Links To Images -->
[Banner]: /imgs/banners/ghost_banner.png "Simple configurable multi-lang assistant"
[English]: /imgs/flags/us.png "English"
[French]: /imgs/flags/fr.png "French"
[App-menu]: http://openghost.com/sites/default/files/paste_1476635110.png
[Asciinema]: https://cloud.githubusercontent.com/assets/11017174/25974079/4e840f70-36a7-11e7-9f7d-9d4f50311033.png
<!-- Links To MDs -->
[Changelog File]: CHANGELOG.md
[Contributing File]: CONTRIBUTING.md
[License File]: LICENSE.md
<!-- Badges URLs -->
[Build-shield]: https://img.shields.io/badge/build-passing-brightgreen.svg
[Version-shield]: https://img.shields.io/badge/version-18.01.03-blue.svg
[License-shield]: https://img.shields.io/badge/license-MIT-yellow.svg
[Plugins-shield]: https://img.shields.io/badge/plugins-81+-orange.svg
