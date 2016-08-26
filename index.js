"use strict";

const FirebaseAnalyticsManager = require("react-native").NativeModules.FirebaseAnalytics;

class FirebaseAnalytics {

    /**
     * Custom log event with name
     * @param  {name} The name of the event
     * @param {parameters} optional parameters about the event as Dictionary
     */

    static logEventWithName( name, parameters = {}) {
        FirebaseAnalyticsManager.logEventWithName(name, parameters);
    }


	static setUserPropertyString(value, name) {
		FirebaseAnalyticsManager.
	}


module.exports = FirebaseAnalytics;
