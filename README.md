# About

Noticed a bug in SwiftUI, where the layout of laid elements gets shifted when a popOver is presenting and the app is sent to background.

Tested on an Open source iOS app as well built in SwiftUI.

## Steps to reproduce:

1. Open app
2. Notice the tap area of "testing" button
3. Press popOver button for opening a popover View
4. goto home screen
5. return to the app
6. close popover
7. notice the tap area changes considerably.

## Bug in action:

https://github.com/dramikei/SwiftUI-presentation-layout-bug/assets/18085407/3d008fbe-ce9f-48d9-8f43-11d21668b29e

## Findings

Bug does not seem to affect buttons embeded inside a NavigationBar, but all other buttons/tap gestures are affected.

### Before triggering bug

<img width="1266" alt="Screenshot 2023-05-23 at 5 18 01 PM" src="https://github.com/dramikei/SwiftUI-presentation-layout-bug/assets/18085407/87168f78-b75b-463f-a74e-c347b2d7cffb">

### After triggering bug

<img width="1267" alt="Screenshot 2023-05-23 at 5 19 05 PM" src="https://github.com/dramikei/SwiftUI-presentation-layout-bug/assets/18085407/62f45f5b-7009-4f89-bdbd-702a00aa4400">

## System Information

Xcode: 14.3

macOS: Ventura 13.0

iOS Simulator Version: 16.4

Happens on a physical device as well: Yes

Replicable in Prod (appstore): Yes
