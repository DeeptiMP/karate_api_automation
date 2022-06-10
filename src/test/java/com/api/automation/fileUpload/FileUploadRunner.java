package com.api.automation.fileUpload;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class FileUploadRunner {
	@Test 
	public Karate testRunner() {
		return Karate.run("fileupload.feature").relativeTo(getClass());
	}
}
