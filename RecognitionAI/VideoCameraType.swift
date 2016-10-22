//
//  VideoCameraType.swift
//
//  RecognitionAI
//
//  Created by dinghing on 9/30/16.
//  Copyright © 2016 dinghing.sample.com. All rights reserved.
//

import AVFoundation


enum CameraType : Int {
    case back
    case front
    
    func captureDevice() -> AVCaptureDevice {
        switch self {
        case .front:
            guard let devices = AVCaptureDeviceDiscoverySession(deviceTypes: [], mediaType: AVMediaTypeVideo, position: .front).devices else {break}
            print("devices:\(devices)")
            for device in devices where device.position == .front {
                return device
            }
        default:
            break
        }
        return AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
    }
}
