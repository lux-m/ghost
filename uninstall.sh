#!/usr/bin/env bash
declare -f dialog_msg >/dev/null || {
    echo "To uninstall, please run ghost -r"
    exit 1
}

jv_yesno "Are you sure you want to uninstall ghost and all its dependancies?" || exit 1

shopt -s nullglob

gt_warning "Uninstalling plugins"
cd plugins_installed
for plugin in *; do
    echo "uninstalling $plugin..."
    store_plugin_uninstall $plugin
done
cd ../

gt_warning "Uninstalling TTS engines"
cd tts_engines
for tts_engine in *; do
    echo "uninstalling $tts_engine..."
    cd $tts_engine
    uninstall.sh
    cd ../
done
cd ../

gt_warning "Uninstalling STT engines"
cd stt_engines
for stt_engine in *; do
    echo "uninstalling $stt_engine..."
    cd $stt_engine
    uninstall.sh
    cd ../
done
cd ../

gt_warning "Uninstalling ghost core dependencies"
gt_remove jq sox libsox-fmt-mp3

gt_warning "Removing ghost folder"
if gt_yesno "Do you want to backup your ghost config?"; then
    cp -R config ~/ghost_backup/
    echo "config/ has been copied into ~/ghost_backup"
fi
cd ../
rm -rf ghost

gt_success "Jarvis has been uninstalled successfuly"
gt_debug "If you are not happy with ghost"

exit 0
