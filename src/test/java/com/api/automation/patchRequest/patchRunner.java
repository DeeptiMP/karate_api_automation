package com.api.automation.patchRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class patchRunner {
@Test
public Karate runner() {
	return Karate.run("patchRequest").relativeTo(getClass());
}
}
