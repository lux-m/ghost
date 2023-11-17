#!/usr/bin/env roundup

describe "ghost Core"

it_shows_help() {
    ghost -h | grep Usage
}

it_checks_root () {
    test "$(sudo ghost -w 2>&1)" = "ERROR: ghost must not be used as root"
}

it_says_hello() {
    test "$(ghost -mws "bonjour")" = "ghost: bonjour"
}

it_executes_order() {
    test "$(ghost -mwx "test")" = "ghost: Ca fonctionne!"
}

it_executes_unwknown_order() {
    test "$(ghost -mwx "unknown")" = "ghost: Je ne comprends pas: unknown"
}

it_handles_order_captures() {
    test "$(ghost -mwx "repete ceci et cela")" = "ghost: ceci cela"
}

it_handles_nested_commands() {
    test "$(ghost -kmwx "ca va?" <<< "oui" | tail -n 1)" = "lux: ghost: ravi de l'entendre"
}

it_handles_alternatives() {
    test "$(ghost -mwx "termine")" = "ghost: Ok"
}

it_ignores_nested_alternatives() {
    test "$(ghost -mwx "pas du tout")" = "ghost: Je ne comprends pas: pas du tout"
}

it_handles_nested_alternatives() {
    test "$(ghost -kmwx "ca va?" <<< "pas du tout" | tail -n 1)" = "lux: ghost: j'en suis navré"
}

it_runs_keyboard_mode () {
    ghost -mk <<< "au revoir"
}

#it_starts_in_background() {
#    test "$(ghost -b | head -n 1)" = "ghost has been launched in background"
#}

#it_gets_killed() {
#    sleep 1
#    test "$(jarvis -q)" = "ghost has been terminated"
#}

#it_but_not_twice() {
#    test "$(ghost -q)" = "ghost is not running"
#}
