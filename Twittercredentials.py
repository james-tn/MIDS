import tweepy

consumer_key = "sXatThDz7604cnRRKMP8wrTXb";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "2oCd08ikyBcefcFceVKZVaH2GdG8Z2BSsZFzhAT4aw1ZOYEalr";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "870110281036443648-1xzIfb4fH5nbmoELpg4h3eSPo5AP1X3";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "SCwS1dvEFb1yTx0pIVFJhFX9TRfF5614iQbx3nN4Y9DRP";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



