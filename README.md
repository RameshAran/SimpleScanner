# DataScannerViewController Sample Code

This sample code demonstrates how to use DataScannerViewController in your iOS app to easily scan text and barcodes using VisionKit in SwiftUI.

## Installation

To use DataScannerViewController in your app, follow these steps:

1. Clone or download the sample code from this repository.
2. Copy the `DocumentScannerView.swift` file into your Xcode project.

## Usage

To use DocumentScannerView in your app, create an instance of the class and present it from your view controller:

```swift
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Scan a document")
                    .font(.title)
                    .padding()
                DocumentScannerView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
        }
    }
}
```

You can customize the recognized data types, quality level, and other settings to suit your needs.

Once the scanner is presented, you can read the scanned content from the `processItem` function:

```swift
func processItem(_ item: DataScannerViewController.Item) {
    switch item {
    case .text(let text):
        print("Scanned text: \(text)")
    case .barcode(let barcode):
        print("Scanned barcode: \(barcode)")
    }
}
```

You can also add customizations to the overlay view to show additional overlays over detected texts or barcodes:

```swift
scannerViewController.overlayContainerView.addSubview(customOverlayView)
```

![image](https://user-images.githubusercontent.com/2862173/236513481-fdbf5196-04a1-481f-a918-7bbe5a00ebc8.png)


## Requirements

This sample code requires Xcode 12 or later and a minimum deployment target of iOS 14 or later.

## License

This sample code is available under the MIT license. See the [LICENSE](LICENSE) file for more information.
