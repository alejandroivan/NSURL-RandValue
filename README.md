# NSURL+RandValue
Category that adds a random value to the URL in order to avoid caching

## Usage
```
#import "NSURL+RandValue.h" // 1) Import the category
    
- (void)someMethod {
    NSURL *theURL = [NSURL URLWithString:@"http://server/file.php?key1=value1"];
    NSURL *randomURL = [theURL randomizedURL];
        
    // Prints: http://server/file.php?key1=value1&rand=<random_integer>
    NSLog(@"%@", randomURL.absolutePath);
}
```

## License
Released under the MIT license. See [LICENSE](LICENSE) for details.