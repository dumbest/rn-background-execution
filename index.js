
import { NativeModules } from 'react-native';

const RNBackgroundExecution = NativeModules.RNBackgroundExecution;

export default class BackgroundExecution {
  /**
   * Mark the start of a task that should continue if the app enters the background.
   */
  static beginBackgroundTask() {
    return new Promise((resolve, reject) => {
      RNBackgroundExecution.beginBackgroundTaskWithExpirationHandler((error) => {
        resolve(error);
      });
    });
  }

  /**
   * Marks the end of a specific long-running background task.
   * Failure to end the task explicitly will result in the termination of the app.
   */
  static endBackgroundTask() {
    RNBackgroundExecution.endBackgroundTask();
  }
};