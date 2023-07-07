import ballerina/http;

public type Created record {|
    *http:Created;
    CreatedMessage body;
|};

public type CreatedMessage record {|
    string message?;
    string id?;
|};