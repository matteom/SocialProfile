#  Configuring the API credentials

The project needs three configuration files:

- **Global.xcconfig** containing the domain pointing to the API, inherited by the other files.
- **Debug.xcconfig** containing the configuration for the staging environment.
- **Release.xcconfig** containing the configuration for the production environment. 

You can download them from our server at https://example.com/credentials

## Configuration file specifications

The configuration file need to contain the following keys:

- **API_BASE_URL**: The URL pointing to the API
- **API_KEY**: The secret key for the app

## Reading values in code

Build configuration values are passed to the app at build time through the *Info.plist* file using `VALUE_NAME = $(VALUE_NAME)`.

To read the passed values at runtime use `Bundle.main.object(forInfoDictionaryKey: "VALUE_NAME")`.
