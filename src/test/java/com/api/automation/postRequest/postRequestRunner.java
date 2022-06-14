package com.api.automation.postRequest;

import com.intuit.karate.junit5.Karate;

class postRequestRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("javaScriptExecutor.feature").relativeTo(getClass());
    }    

}
