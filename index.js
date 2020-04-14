
import { NativeModules } from 'react-native';

const { RNBackgroundExecution } = NativeModules;

export default class BackgroundExecution {
  /**
   * Begin background execution task.
   */
  static beginBackgroundTask() {
    return new Promise((resolve, reject) => {
      RNBackgroundExecution.beginBackgroundTaskWithExpirationHandler((error) => {
        resolve(error);
      });
    });
  }

  /**
   * End background execution task.
   */
  static endBackgroundTask() {
    RNBackgroundExecution.endBackgroundTask();
  }
};