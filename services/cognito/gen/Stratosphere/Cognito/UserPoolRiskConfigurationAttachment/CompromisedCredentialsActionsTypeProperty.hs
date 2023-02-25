module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.CompromisedCredentialsActionsTypeProperty (
        CompromisedCredentialsActionsTypeProperty(..),
        mkCompromisedCredentialsActionsTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CompromisedCredentialsActionsTypeProperty
  = CompromisedCredentialsActionsTypeProperty {eventAction :: (Value Prelude.Text)}
mkCompromisedCredentialsActionsTypeProperty ::
  Value Prelude.Text -> CompromisedCredentialsActionsTypeProperty
mkCompromisedCredentialsActionsTypeProperty eventAction
  = CompromisedCredentialsActionsTypeProperty
      {eventAction = eventAction}
instance ToResourceProperties CompromisedCredentialsActionsTypeProperty where
  toResourceProperties CompromisedCredentialsActionsTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.CompromisedCredentialsActionsType",
         properties = ["EventAction" JSON..= eventAction]}
instance JSON.ToJSON CompromisedCredentialsActionsTypeProperty where
  toJSON CompromisedCredentialsActionsTypeProperty {..}
    = JSON.object ["EventAction" JSON..= eventAction]
instance Property "EventAction" CompromisedCredentialsActionsTypeProperty where
  type PropertyType "EventAction" CompromisedCredentialsActionsTypeProperty = Value Prelude.Text
  set newValue CompromisedCredentialsActionsTypeProperty {}
    = CompromisedCredentialsActionsTypeProperty
        {eventAction = newValue, ..}