`jv_version`
------------

Public: version of ghost


`jv_dir`
--------

Public: directory where ghost is installed without trailing slash


`username`
----------

Public: the name of the user


`trigger`
---------

Public: the name of ghost (the hotword)


`order`
-------

Public: the transcribed voice order

    *FAIT (*)==echo "capture: (1)"; echo "order: $order"
    You: Fais le café
    capture: le cafe
    order: Fait le café


`language`
----------

Public: the user's language in Jarvis settings

Ex: `en_GB` Use `${language:0:2}` to only get `en`


`platform`
----------

Public: user's platform (linux, osx)


`jv_arch`
---------

Public: user's architecture (armv7l, x86_64)


`jv_os_name`
------------

Public: user's OS name (raspbian, ubuntu, Mac OS X...)


`jv_os_version`
---------------

Public: user's OS version (8, 16.02, ...)


`jv_api`
--------

Public: indicates if called using API else normal usage

    $jv_api && echo "this is an API call"


`jv_json`
---------

Public: indicates if output should be in JSON


`jv_ip`
-------

Public: ip address of ghost

    echo $jv_ip
    192.168.1.20


`jv_repeat_last_command()`
--------------------------

Public: Re-run last executed command. Use to create an order to repeat.

Usage:

    AGAIN*==jv_repeat_last_command


`jv_display_commands()`
-----------------------

Public: display available commands grouped by plugin name


`say()`
-------

Public: Speak some text out loud
* $1 - text to speak

    $> say "hello world"
    ghost: hello world


`jv_curl()`
-----------

Public: Call HTTP requests

It displays errors if request fails When ran in troubleshooting mode, it will display request & response
* $@ - all arguments you would give to curl

Returns the return code of curl

    $> *COMMAND*==jv_curl "http://192.168.1.1/action" && say "Done"


`jv_spinner()`
--------------

Public: Displays a spinner for long running commmands

Returns return code of background task

    command &; jv_spinner $!
    |/-\|\-\... (spinning bar)


`jv_read_dom()`
---------------

Public: XML Parser

Usage:

    while jv_read_dom; do
      [[ $ENTITY = "tagname" ]] && echo $CONTENT
    done < file.xml


`jv_sanitize()`
---------------

Public: Rremoves accents, lowercase, strip special chars and optionally replace spaces with underscores
* $1 - (required) string to sanitize
* $2 - (optional) character to replace spaces with

Echoes the sanitized string

    $> jv_sanitize "Caractères Spéciaux?"
    caracteres speciaux


`jv_error()`
------------

Public: Displays a error in red
* $1 - message to display


`jv_warning()`
--------------

Public: Displays a warning in yellow
* $1 - message to display


`jv_success()`
--------------

Public: Displays a success in green
* $1 - message to display


`jv_info()`
-----------

Public: Displays an information in blue
* $1 - message to display


`jv_debug()`
------------

Public: Displays a log in gray
* $1 - message to display


`jv_press_enter_to_continue()`
------------------------------

Public: Asks user to press enter to continue

Returns nothing

    $> jv_press_enter_to_continue
    Press [Enter] to continue


`jv_exit()`
-----------

Public: Exit properly jarvis
* $1 - Return code

Returns nothing


`jv_yesno()`
------------

Public: YesNo prompt from the command line

* $1 - Question to be answered

Usage

    $> jv_yesno "question?" && echo "Yup"
    question? [Y/n] y
    Yup


`jv_progressbar()`
------------------

Public: display a progress bar in the terminal
* $1 - current step number
* $2 - total number of steps

Usage (usually in a loop)

    $> jv_progressbar 5 10
    [████████████████████                    ] 50%
    $> jv_progressbar 10 10
    [████████████████████████████████████████] 100%


`jv_update()`
-------------

Public: update package/formula list

    jv_update


`jv_is_installed()`
-------------------

Public: indicates if a package is installed

* $1 - package to verify

    jv_is_installed mpg123 && echo "already installed"


`jv_install()`
--------------

Public: install packages, used for dependencies

* $@ - list of packages to install

    jv_install mpg123


`jv_remove()`
-------------

Public: remove packages, used for uninstalls

* $@ - list of packages to remove

    jv_remove mpg123


`jv_browse_url()`
-----------------

Public: open URL in default browser


