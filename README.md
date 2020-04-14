
# react-native-background-execution

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

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNBackgroundExecutionPackage;` to the imports at the top of the file
  - Add `new RNBackgroundExecutionPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-background-execution'
  	project(':react-native-background-execution').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-background-execution/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-background-execution')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNBackgroundExecution.sln` in `node_modules/react-native-background-execution/windows/RNBackgroundExecution.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Background.Execution.RNBackgroundExecution;` to the usings at the top of the file
  - Add `new RNBackgroundExecutionPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNBackgroundExecution from 'react-native-background-execution';

// TODO: What to do with the module?
RNBackgroundExecution;
```
  