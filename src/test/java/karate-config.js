function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);

    if (!env) {
        env = 'dev'; // default to 'dev' if not set
    }

    var config = {
        APIUrl: 'https://reqres.in/api/products',
         postAPIUrl: 'https://reqres.in/api/products'
    };

    if (env == 'dev') {
        config.userEmail = 'eve.holt@reqres.in';
        config.userPassword = 'cityslicka';
    } else if (env == 'qa') {
        config.userEmail = 'eve.holt@reqres.in';
        config.userPassword = 'pistol';
    }

    var accessToken = karate.callSingle('classpath:helpers/CreateToken.feature', config).authToken;
    karate.set('headers', { Authorization: 'Bearer ' + accessToken, 'Content-Type': 'application/json' });

    return config;
}
