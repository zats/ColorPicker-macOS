//
//  AppDelegate.swift
//  Picker
//
//  Created by Sash Zats on 7/11/17.
//  Copyright © 2017 Alexander Zats. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate {
  let picker = NSColorPanel.shared

  func applicationWillHide(_ notification: Notification) {

  }

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    picker.orderFrontRegardless()
    picker.showsAlpha = true
    picker.hidesOnDeactivate = false
    picker.delegate = self
    picker.setTarget(self)
    picker.setAction(#selector(AppDelegate.colorDidChange(_:)))
  }

  @objc func colorDidChange(_ picker: NSColorPanel) {

  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

  func windowWillClose(_ notification: Notification) {
    NSApp.terminate(self)
  }
}

