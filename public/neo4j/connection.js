
var getQueryString = function ( field, url ) {
    var href = url ? url : window.location.href;
    var reg = new RegExp( '[?&]' + field + '=([^&#]*)', 'i' );
    var string = reg.exec(href);
    return string ? string[1] : null;
};


var defaulturl = "db-ljovrmxu24s76s1jbphc.graphenedb.com:24780";
var defaultuser = "app81968631-13521279694483497";
var defaultpwd = "b.o70mLuaAUEUO.BA1vM10dsFOjtEKm";

var rawurl = getQueryString("cyperurl") || defaulturl;

var cypherurl = rawurl + "/db/data/transaction/commit";
//  alert(cypherurl);
var cypheruid = getQueryString("cyperuid") || getQueryString("cyperusr") || getQueryString("user") || defaultuser;
var cypherpwd = getQueryString("cyperpwd") || getQueryString("pwd") || defaultpwd;

var sfdcid = getQueryString("sfdcid") || getQueryString("id") || "0011I00000C3vFgQAJ";
var sfdcorgid = getQueryString("sfdcorgid") || getQueryString("orgid") || "00D1I000003nRMaUAM";


popoto.rest.CYPHER_URL = cypherurl;
popoto.rest.AUTHORIZATION = "Basic " + btoa(cypheruid + ":" + cypherpwd);

popoto.provider.nodeProviders = {
    "Account": {
        "autoExpandRelations": true,
        "returnAttributes": ["name"],
        "constraintAttribute": "name",
        "getPredefinedConstraints": function (node) {
            return ["$identifier.sfdcid IN [\"" + sfdcid + "\"] AND $identifier.sfdcorgid IN [\"" + sfdcorgid + "\"]"];
        }
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