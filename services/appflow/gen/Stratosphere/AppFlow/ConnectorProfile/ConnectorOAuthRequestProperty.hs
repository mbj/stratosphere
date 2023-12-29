module Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty (
        ConnectorOAuthRequestProperty(..), mkConnectorOAuthRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectorOAuthRequestProperty
  = ConnectorOAuthRequestProperty {authCode :: (Prelude.Maybe (Value Prelude.Text)),
                                   redirectUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorOAuthRequestProperty :: ConnectorOAuthRequestProperty
mkConnectorOAuthRequestProperty
  = ConnectorOAuthRequestProperty
      {authCode = Prelude.Nothing, redirectUri = Prelude.Nothing}
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