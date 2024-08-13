# Theme Changer


A simple Flutter app demonstrating the use of the Provider package.


## Getting Started

Remember:
01. <b> Add the provider package: </b>
    Include the provider package in your pubspec.yaml file by adding it to your dependencies. 
    You can find the package on pub.dev.

02.  <b> Set up Providers:</b>  
    In this project, 
    we used ChangeNotifierProvider to provide state management to the widget tree. 
    This demonstrates that you can manage state with a single provider instead of using MultiProvider for multiple providers.

03. <b> Update State:</b> To notify listeners of state changes, call notifyListeners() within your ChangeNotifier class.
    This will trigger any Consumer widgets that depend on this state to rebuild.

05. <b>Consume State: </b>
    Instead of using the Consumer widget, 
    this project demonstrates the use of Provider.of to access and consume the state provided by the ChangeNotifier. 
    This approach shows that Provider.of can also be used effectively to manage and consume state.

**Conclusion**
    _This project serves as a simple example of how to implement state management in
    Flutter using the Provider package, with a focus on using Provider.of and ChangeNotifierProvider._

_Developed by Abdur Rahman_





