# Geo
A very simple API that checks a geolocation of a given IP address.

## Geolocation API
Geo uses the [http://www.ipinfodb.com](IPInfo.com) API to check the IP address that the request comes from.

## Setup
`config.yml` needs to contain the API key from IPInfo.com, and also, the key/value pair of what you're looking to check for.

## Use
Simply include the `/` route as a script (`<script type="text/javascript" src="http://www.mydomain.com/?callback=myJsFunction"></script>`). For the `callback` parameter, use a Javascript function name of the function that you want to handle the result. What will happen is you will get back a `true` or `false` as the first parameter.