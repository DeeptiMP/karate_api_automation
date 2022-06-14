package com.api.automation.putRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class putRequestRunner {
@Test
public Karate Runner() {
	return Karate.run("putRequest").relativeTo(getClass());
}
}
