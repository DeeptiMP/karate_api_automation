package com.api.automation;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

public class ParallelRunner {
	@Test
	public void executeTest() {
		Builder runner = new Builder();
		runner.path("classpath:com/api/automation");
		Results result = runner.parallel(5);
		System.out.println("No of Scenarios : " + result.getScenariosTotal());
		System.out.println("No of Scenarios PASSED: " + result.getScenariosPassed());
		System.out.println("No of Scenarios FAILED: " + result.getScenariosFailed());
		Assertions.assertEquals(0, result.getScenariosFailed());
	}
}
