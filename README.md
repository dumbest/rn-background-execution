
# react-native-background-execution
This method requests additional background execution time for your app. Call this method when leaving a task unfinished might be detrimental to your app’s user experience. For example, call this method before writing data to a file to prevent the system from suspending your app while the operation is in progress.

## Getting started

`$ npm install react-native-background-execution --save`

### Mostly automatic installation

`$ react-native link react-native-background-execution`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-background-execution` and add `RNBackgroundExecution.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNBackgroundExecution.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

## Usage
```javascript
import RNBackgroundExecution from 'react-native-background-execution';

// Mark the start of a task that should continue if the app enters the background.
RNBackgroundExecution.beginBackgroundTask().then((error) => {
  // Callback after remaining background time expires.
});

// Marks the end of a specific long-running background task.
RNBackgroundExecution.endBackgroundTask();
```
  