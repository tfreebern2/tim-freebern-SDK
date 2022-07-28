# SDK Design

The number one goal was to make the setup process and use of the The One SDK as easy as possible.

## Project Structure

Below is a high level overview of the project structure of The One SDK.

The `example` directory provides a bit of sample code on how to instantiate `TheOne` class and use
it's helper methods within your Dart application.

All of the source code is contained in the `src` file directory. `TheOne` and `model` classes are
the only files exported for use. Exporting the `API` class is not necessary and would only add to
the complexity of the SDK. All `API` functionality is accessed through `TheOne` class.

All tests are located in the `test` file directory.

```
example/
lib/
    src/
        api/
            api.dart
        models/
            ...
        the_one_sdk_base.dart
    the_one_sdk.dart
test/
    api/
    models/
```

## The One SDK

This file is for exporting all of the necessary Dart classes needed to implement The One SDK into
Dart or Flutter applications.

## The One SDK Base - TheOne

The SDK is centered around the `TheOne` class. There is a default `API Key` value setup for the
class but a developer will need to retrieve their own for it to make successful calls to The One
API. There is an option to also configure the `baseURL` if the domain of the server ever changes in
the future. This allows for application developers to modify their own code without having to
upgrade `The One SDK`.

## API

The API class provides a centralized location for all HTTP request and response code.

The `Client()` class from the `http` library is set as a private member and cannot be access outside
of the class. This prevents developers from accidentally changing the code and/or using the client
incorrectly.

The `getJSONHeaders()` makes it easy to generate the necessary HTTP Headers needed for a request to
The One API server.

Currently, only `HTTP GET` is supported but adding HTTP Verbs to the class can be done easily enough
without touching any of the other functionality within the class.

There is also a `parseReponse` method where all responses from the server are handled.

The API class is not an exported module and cannot be accessed through `TheOne` class. This is meant
for making The One SDK as easy to use as possible without making mistakes.

## Models

All Dart models have built-in `named constructors` to allow the easy transformation from JSON to
Dart objects. By exporting the model classes, application developers can easily use these models in
their applications without having to write any additional code.

## Testing

All model classes have unit tests written for their `fromJson` constructors.

The `Api` and `TheOne` classes need additional unit tests that implement mocks using the `mocktail`
Dart plugin.
