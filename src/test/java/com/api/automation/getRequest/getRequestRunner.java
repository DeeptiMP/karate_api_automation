package com.api.automation.getRequest;

import com.intuit.karate.junit5.Karate;

class getRequestRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("validateJsonArray").relativeTo(getClass());
    }    

}
