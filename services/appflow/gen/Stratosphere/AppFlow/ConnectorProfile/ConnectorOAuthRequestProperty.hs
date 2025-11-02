module Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty (
        ConnectorOAuthRequestProperty(..), mkConnectorOAuthRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectorOAuthRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectoroauthrequest.html>
    ConnectorOAuthRequestProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectoroauthrequest.html#cfn-appflow-connectorprofile-connectoroauthrequest-authcode>
                                   authCode :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectoroauthrequest.html#cfn-appflow-connectorprofile-connectoroauthrequest-redirecturi>
                                   redirectUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorOAuthRequestProperty :: ConnectorOAuthRequestProperty
mkConnectorOAuthRequestProperty
  = ConnectorOAuthRequestProperty
      {haddock_workaround_ = (), authCode = Prelude.Nothing,
       redirectUri = Prelude.Nothing}
instance ToResourceProperties ConnectorOAuthRequestProperty where
  toResourceProperties ConnectorOAuthRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ConnectorOAuthRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthCode" Prelude.<$> authCode,
                            (JSON..=) "RedirectUri" Prelude.<$> redirectUri])}
instance JSON.ToJSON ConnectorOAuthRequestProperty where
  toJSON ConnectorOAuthRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthCode" Prelude.<$> authCode,
               (JSON..=) "RedirectUri" Prelude.<$> redirectUri]))
instance Property "AuthCode" ConnectorOAuthRequestProperty where
  type PropertyType "AuthCode" ConnectorOAuthRequestProperty = Value Prelude.Text
  set newValue ConnectorOAuthRequestProperty {..}
    = ConnectorOAuthRequestProperty
        {authCode = Prelude.pure newValue, ..}
instance Property "RedirectUri" ConnectorOAuthRequestProperty where
  type PropertyType "RedirectUri" ConnectorOAuthRequestProperty = Value Prelude.Text
  set newValue ConnectorOAuthRequestProperty {..}
    = ConnectorOAuthRequestProperty
        {redirectUri = Prelude.pure newValue, ..}