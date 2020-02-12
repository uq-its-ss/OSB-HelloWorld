xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://api.uq.edu.au/hello";
(:: import schema at "../Resources/nxsd/hello_world_response.xsd", 
                     "../Resources/nxsd/hello_world_request.xsd" ::)

declare variable $request as element() (:: schema-element(ns1:helloWorldRequest) ::) external;

declare function local:func($request as element() (:: schema-element(ns1:helloWorldRequest) ::)) as element() (:: schema-element(ns1:helloWorldResponse) ::) {
    <ns1:helloWorldResponse>
        <ns1:response>{fn:concat("Hello World ", fn:data($request/ns1:request))}</ns1:response>
    </ns1:helloWorldResponse>
};

local:func($request)
