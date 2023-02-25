module Stratosphere.Events.Connection.OAuthParametersProperty (
        module Exports, OAuthParametersProperty(..),
        mkOAuthParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Connection.ClientParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Connection.ConnectionHttpParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuthParametersProperty
  = OAuthParametersProperty {authorizationEndpoint :: (Value Prelude.Text),
                             clientParameters :: ClientParametersProperty,
                             httpMethod :: (Value Prelude.Text),
                             oAuthHttpParameters :: (Prelude.Maybe ConnectionHttpParametersProperty)}
mkOAuthParametersProperty ::
  Value Prelude.Text
  -> ClientParametersProperty
     -> Value Prelude.Text -> OAuthParametersProperty
mkOAuthParametersProperty
  authorizationEndpoint
  clientParameters
  httpMethod
  = OAuthParametersProperty
      {authorizationEndpoint = authorizationEndpoint,
       clientParameters = clientParameters, httpMethod = httpMethod,
       oAuthHttpParameters = Prelude.Nothing}
instance ToResourceProperties OAuthParametersProperty where
  toResourceProperties OAuthParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.OAuthParameters",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthorizationEndpoint" JSON..= authorizationEndpoint,
                            "ClientParameters" JSON..= clientParameters,
                            "HttpMethod" JSON..= httpMethod]
                           (Prelude.catMaybes
                              [(JSON..=) "OAuthHttpParameters"
                                 Prelude.<$> oAuthHttpParameters]))}
instance JSON.ToJSON OAuthParametersProperty where
  toJSON OAuthParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthorizationEndpoint" JSON..= authorizationEndpoint,
               "ClientParameters" JSON..= clientParameters,
               "HttpMethod" JSON..= httpMethod]
              (Prelude.catMaybes
                 [(JSON..=) "OAuthHttpParameters"
                    Prelude.<$> oAuthHttpParameters])))
instance Property "AuthorizationEndpoint" OAuthParametersProperty where
  type PropertyType "AuthorizationEndpoint" OAuthParametersProperty = Value Prelude.Text
  set newValue OAuthParametersProperty {..}
    = OAuthParametersProperty {authorizationEndpoint = newValue, ..}
instance Property "ClientParameters" OAuthParametersProperty where
  type PropertyType "ClientParameters" OAuthParametersProperty = ClientParametersProperty
  set newValue OAuthParametersProperty {..}
    = OAuthParametersProperty {clientParameters = newValue, ..}
instance Property "HttpMethod" OAuthParametersProperty where
  type PropertyType "HttpMethod" OAuthParametersProperty = Value Prelude.Text
  set newValue OAuthParametersProperty {..}
    = OAuthParametersProperty {httpMethod = newValue, ..}
instance Property "OAuthHttpParameters" OAuthParametersProperty where
  type PropertyType "OAuthHttpParameters" OAuthParametersProperty = ConnectionHttpParametersProperty
  set newValue OAuthParametersProperty {..}
    = OAuthParametersProperty
        {oAuthHttpParameters = Prelude.pure newValue, ..}