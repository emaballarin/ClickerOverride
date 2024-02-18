# Clicker Override

## The Problem
When showing a presentation using an extended screen, and using a remote clicker, the presentation window has to be focused for the clicker to work. This makes it impossible to use the computer and show a presentation at the same time.

## A Solution
An AutoHotkey script to enable the usage of remote presentation clickers in windows regardless of their focus state.

## How it works
Usually, the `next slide` and `previous slide` keys on a clicker are really `left arrow` and `right arrow` keyboard keys. This AutoHotkey script intercepts `left arrow` and `right arrow` keys, and sends them to the selected window. The script shows a GUI window listing all open windows. Sending the keys happens in the background and doesn't change focus. The script works well with windows "PowerPoint Presenter View" and "Pympress Content" (Pympress is a PDF viewer with similar functionality to the PowerPoint Presenter View). But it doesn't work well with most other windows. If needed, the checkbox "Activate the selected window" can be activated, which will raise and focus the selected window before clicking. This mode can work with some other windows, *e.g.* example Google Chrome, but it will interfere with other tasks. For such reason, it is better to use the above metioned programs when delivering presentation.

## Screenshot
![ClickerOverrideGui Screenshot](screenshot.png)

## Download
A pre-built executable can be downloaded [from here](https://bucket.ballarin.cc/exes/ClickerOverrideGui.exe).
