function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    username:'username_env',
    password:'password_env',
    _url: 'https://jobportalkarate.herokuapp.com/',
    myVarName: 'someValue'
  }
  if (env == 'dev') {
	//Initialize variables for DEV
	config.username='dev_uname';
	config.password='dev_password';
	config._url='https://jobportalkarate.herokuapp.com/';
    
  } else if (env == 'stage') {
    //Initialize variables for STAGE
	config.username='stage_uname';
	config.password='stage_password';
	config._url='https://jobportalkarate.herokuapp.com/';
  }
   else if (env == 'preprod') {
    //Initialize variables for PREPROD
	config.username='preprod_uname';
	config.password='preprod_password';
	config._url='https://jobportalkarate.herokuapp.com/';
  }
  return config;
}