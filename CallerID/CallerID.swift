import IdentityLookup

@main
struct CallerID: LiveCallerIDLookupProtocol {
    var context: LiveCallerIDLookupExtensionContext {
        LiveCallerIDLookupExtensionContext(
            // The URL for the server endpoint that the system uses to fetch incoming call information.
            serviceURL: URL(string: "http://127.0.0.1:8080")!,
            // The URL of the token issuer.
            tokenIssuerURL: URL(string: "http://127.0.0.1:8080")!,
            // The token to authenticate the app.
            userTierToken: Data(base64Encoded: "BBBB")!
        )
    }
}
