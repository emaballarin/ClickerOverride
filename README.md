# `ClickerOverride`

## The Problem
When showing a presentation using an extended screen, and using a remote clicker, the presentation window has to be focused for the clicker to work. This makes it impossible to use the computer and show a presentation at the same time.

## A Solution

An [AutoHotKey](https://www.autohotkey.com/) script to enable the usage of remote presentation clickers in windows regardless of their focus state.

## How it works

Usually, the `next slide` and `previous slide` keys on a clicker are really `left arrow` and `right arrow` keyboard keys. This script intercepts `left arrow` and `right arrow` keys, and sends them to the selected window. The script shows a GUI window listing all open windows. Sending the keys happens in the background and doesn't change focus. The script works well with windows "PowerPoint Presenter View" and "Pympress Content" ([Pympress](https://github.com/Cimbali/pympress) is a PDF viewer with similar functionality to the PowerPoint Presenter View). But it doesn't work well with most other windows. If needed, the checkbox "Activate the selected window" can be activated, which will raise and focus the selected window before clicking. This mode can work with some other windows, *e.g.* example Google Chrome, but it will interfere with other tasks. For such reason, it is better to use the above mentioned programs when delivering presentation.

## Download

A pre-built executable can be downloaded [from here](https://bucket.ballarin.cc/exes/ClickerOverrideGui.exe).

## Attribution

This project is a fork of the [original from GitHub user @4000degrees](https://github.com/4000degrees/ClickerOverride).

## Changelog
Modifications with respect to the original project include:
- use of `left` and `right` arrow keys as `previous slide` and `next slide` commands (in compatibility with [Logitech R500](https://www.logitech.com/en-eu/products/presenters/r500s-laser-presentation-remote.910-006520.html));
- updated, modernised [icon](https://raw.githubusercontent.com/emaballarin/ClickerOverride/main/wireless-mouse.ico);
- fixes to README.md wording;
- repository clean-up;
- updated pre-built executable (using [`Ahk2Exe 1.1.37.01c0`](https://github.com/AutoHotkey/Ahk2Exe)).

## Screenshot

![ClickerOverrideGui Screenshot](screenshot.png)

NOTE: The screenshot refers to the original version of the project.
