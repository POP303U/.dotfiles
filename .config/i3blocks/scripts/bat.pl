#!/usr/bin/perl

use strict;
use warnings;

my $bat_level = `cat /sys/class/power_supply/BAT1/capacity`;
my $bat_status = `cat /sys/class/power_supply/BAT1/status`;
my $bat_icon = "";

chomp $bat_level;
chomp $bat_status;
chomp $bat_level;
if ($bat_level <= 10) {
    $bat_icon = "󰁺 ";
}elsif ($bat_level <= 20) {
    $bat_icon = "󰁻 ";
}elsif ($bat_level <= 30) {
    $bat_icon = "󰁼 ";
}elsif ($bat_level <= 40) {
    $bat_icon = "󰁽 ";
}elsif ($bat_level <= 50) {
    $bat_icon = "󰁾 ";
}elsif ($bat_level <= 60) {
    $bat_icon = "󰁿 ";
}elsif ($bat_level <= 70) {
    $bat_icon = "󰂀 ";
}elsif ($bat_level <= 80) {
    $bat_icon = "󰂁 ";
}elsif ($bat_level <= 90) {
    $bat_icon = "󰂂 ";
}elsif ($bat_level eq 100) {
    $bat_icon = "󰁹 ";
}

print $bat_icon . $bat_status . ": "  . $bat_level . "%";
