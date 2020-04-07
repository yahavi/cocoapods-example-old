//
//  AppDelegate.swift
//  cocoapods-example
//
//  Created by Yahav Itzhak on 07/04/2020.
//  Copyright © 2020 JFrog. All rights reserved.
//

import Cocoa
import SwiftUI
import SGLMath

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Create the window and set the content view. 
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
        
        var myVec = vec4(1, 2, 3, 4)
        myVec.ab = vec2(99, 98)
        print(myVec) //=> (1, 2, 98, 99)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}
