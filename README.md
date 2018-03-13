# NSURL+RandValue
Category that adds a method to NSURL to get a randomized URL, in order to avoid caching.

## Install
Installing is done using [CocoaPods](https://cocoapods.org). To install this category, edit your `Podfile` and add this:

```pod 'NSURL-RandValue'```

Then just run `pod install` in the Terminal, at the same folder where your `Podfile` is.


## Usage
```
#import <NSURL-RandValue/NSURL+RandValue.h>
    
- (void)someMethod {
    NSURL *theURL = [NSURL URLWithString:@"http://server/file.php?key1=value1"];
    NSURL *randomURL = [theURL randomizedURL];
        
    // Prints: http://server/file.php?key1=value1&rand=<random_integer>
    NSLog(@"%@", randomURL.absolutePath);
}
```

## License
Released under the MIT license. See [LICENSE](LICENSE) for details.
