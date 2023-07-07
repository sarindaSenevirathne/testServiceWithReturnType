import ballerina/http;

public type Created record {|
    *http:Created;
    CreatedMessage body;
|};

public type CreatedMessage record {|
    string message?;
    string id?;
|};

service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function post events() returns Created|http:InternalServerError {

        return <Created>{
            body: {message: "Calendar event created successfully.", id: "1"}
        };
    }

}

