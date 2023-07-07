import ballerina/http;
import ballerinax/googleapis.calendar;


import testServiceWithReturnType.types;



service / on new http:Listener(9090) {


    resource function post events(@http:Payload calendar:InputEvent eventPayload) returns types:Created|http:InternalServerError {

       
        return <types:Created>{
            body: {message: "Calendar event created successfully.", id: "1"}
        };
    }

}

