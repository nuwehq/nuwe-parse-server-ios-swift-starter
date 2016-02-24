# nuwe-parse-server-ios-swift-starter
A boilerplate starter project with Nuwe's hosted Parse Server service implementation

## Installation
Clone the repository. It contains a fully built project complete with Parse frameworks, which are installed via cocoapods



## Usage

Create an account and an application on the [Nuwe Platform](https://developer.nuwe.co)

Enable the Parse-Server service on your application

Note the credentials in the Parse tab of the Developer Portal.

In `appDelegate.swift` change the credentials:

```
let parseConfiguration = ParseClientConfiguration(block: { (ParseMutableClientConfiguration) -> Void in
            ParseMutableClientConfiguration.applicationId = "YOURAPPID"
            ParseMutableClientConfiguration.clientKey = "YOURCLIENTKEY"
            ParseMutableClientConfiguration.server = "http://seahorse.nuwe-parse-server.c66.me:YOURPORT/parse/"
            
        })
```



## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
## History
TODO: Write history
## Credits
TODO: Write credits
## License
TODO: Write license
