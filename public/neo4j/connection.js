
var getQueryString = function ( field, url ) {
    var href = url ? url : window.location.href;
    var reg = new RegExp( '[?&]' + field + '=([^&#]*)', 'i' );
    var string = reg.exec(href);
    return string ? string[1] : null;
};

var cypherurl = getQueryString("cyperurl") || "http://hobby-cinpcmhbgmcbgbkeddkomdpl.dbs.graphenedb.com:24789/db/data/transaction/commit";
var cypheruid = getQueryString("cyperuid") || getQueryString("cyperusr") || "app78358662-9L8qxg";
var cypherpwd = getQueryString("cyperpwd") || getQueryString("cyperusr") || "b.grELhdtxmu17.EgTwMT2CR8gp3pJ1";

popoto.rest.CYPHER_URL = cypherurl;
popoto.rest.AUTHORIZATION = "Basic " + btoa(cypheruid + ":" + cypherpwd);

popoto.provider.nodeProviders = {
    "Account": {
        "autoExpandRelations": true,
        "returnAttributes": ["name"],
        "constraintAttribute": "name"
    },
    "Contact": {
        "autoExpandRelations": true,
        "returnAttributes": ["name", "born"],
        "constraintAttribute": "name"
    },
    "Opportunity": {
        "autoExpandRelations": true,
        "returnAttributes": ["name"],
        "constraintAttribute": "name"
    },
    "Case": {
        "autoExpandRelations": true,
        "returnAttributes": ["name"],
        "constraintAttribute": "name"
    },
    "Order": {
        "autoExpandRelations": true,
        "returnAttributes": ["name"],
        "constraintAttribute": "name"
    }
};