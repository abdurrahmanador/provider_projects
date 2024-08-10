# provider

A Beginner Project using Provider

## Getting Started

Remember:
01. <b> Add the provider package: </b>
    Include the provider package in your pubspec.yaml file by adding it to your dependencies. 
    You can find the package on pub.dev.

02.  <b> Set up Providers:</b>  
    Use MultiProvider or ChangeNotifierProvider (previously known as SingleProvider)
    to provide your state to the widget tree. MultiProvider allows you to provide multiple providers at once, 
    whereas ChangeNotifierProvider is used for a single provider.

03. <b> Update State:</b> To notify listeners of state changes, call notifyListeners() within your ChangeNotifier class.
    This will trigger any Consumer widgets that depend on this state to rebuild.

05. <b>Consume State: </b>
    Use the Consumer widget to rebuild parts of the UI based on the state provided. 
    The Consumer widget listens for changes to the provided state and updates the UI accordingly.


--- Abdur Rahman 