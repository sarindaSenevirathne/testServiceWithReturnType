import ballerina/http;

import testServiceWithReturnType.types;



service / on new http:Listener(9090) {


    resource function post events() returns types:Created|http:InternalServerError {

        return <types:Created>{
            body: {message: "Calendar event created successfully.", id: "1"}
        };
    }

}

