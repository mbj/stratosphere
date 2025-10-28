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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-oauthparameters.html>
    OAuthParametersProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-oauthparameters.html#cfn-events-connection-oauthparameters-authorizationendpoint>
                             authorizationEndpoint :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-oauthparameters.html#cfn-events-connection-oauthparameters-clientparameters>
                             clientParameters :: ClientParametersProperty,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-oauthparameters.html#cfn-events-connection-oauthparameters-httpmethod>
                             httpMethod :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-oauthparameters.html#cfn-events-connection-oauthparameters-oauthhttpparameters>
                             oAuthHttpParameters :: (Prelude.Maybe ConnectionHttpParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuthParametersProperty ::
  Value Prelude.Text
  -> ClientParametersProperty
     -> Value Prelude.Text -> OAuthParametersProperty
mkOAuthParametersProperty
  authorizationEndpoint
  clientParameters
  httpMethod
  = OAuthParametersProperty
      {haddock_workaround_ = (),
       authorizationEndpoint = authorizationEndpoint,
       clientParameters = clientParameters, httpMethod = httpMethod,
       oAuthHttpParameters = Prelude.Nothing}
instance ToResourceProperties OAuthParametersProperty where
  toResourceProperties OAuthParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.OAuthParameters",
         supportsTags = Prelude.False,
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