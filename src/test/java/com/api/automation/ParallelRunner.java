package com.api.automation;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.Runner.Builder;

public class ParallelRunner {
//	 @Test
//	    void testParallel() {
//	        Results results = Runner.path("classpath:getRequest")
//	                //.outputCucumberJson(true)
//	                .parallel(1);
//	        assertEquals(0, results.getFailCount(), results.getErrorMessages());
//	    }
	
	@Test
	public void executeKarateTests()
	{
		Builder builder = new Builder();
		builder.path("classpath:com/api/automation/getRequest");
		builder.parallel(1);
		
		
	}
}
