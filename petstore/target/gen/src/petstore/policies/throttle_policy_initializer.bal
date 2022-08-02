import wso2/gateway;


function initThrottlePolicies() {
    future<()> ftrThrottleSubscription = start gateway:initializeThrottleSubscription();
   _ = start gateway:initiateThrottlingJmsListener();
}

function getDeployedPolicies() returns map<json> {
    return {
    "app_50PerMin": {
        count : 50,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"app_20PerMin": {
        count : 20,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"app_10PerMin": {
        count : 10,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"sub_Gold": {
        count : 5000,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"sub_Silver": {
        count : 2000,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"sub_Bronze": {
        count : 10,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"sub_Unauthenticated": {
        count : 500,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"sub_Default": {
        count : 500,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"res_50kPerMin": {
        count : 50000,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"res_20kPerMin": {
        count : 20000,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } ,"res_10kPerMin": {
        count : 10000,
        unitTime : 1,
        timeUnit : "min",
        stopOnQuota : true
    } 
    };
}
