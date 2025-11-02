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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype.html>
    CompromisedCredentialsActionsTypeProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype-eventaction>
                                               eventAction :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCompromisedCredentialsActionsTypeProperty ::
  Value Prelude.Text -> CompromisedCredentialsActionsTypeProperty
mkCompromisedCredentialsActionsTypeProperty eventAction
  = CompromisedCredentialsActionsTypeProperty
      {haddock_workaround_ = (), eventAction = eventAction}
instance ToResourceProperties CompromisedCredentialsActionsTypeProperty where
  toResourceProperties CompromisedCredentialsActionsTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.CompromisedCredentialsActionsType",
         supportsTags = Prelude.False,
         properties = ["EventAction" JSON..= eventAction]}
instance JSON.ToJSON CompromisedCredentialsActionsTypeProperty where
  toJSON CompromisedCredentialsActionsTypeProperty {..}
    = JSON.object ["EventAction" JSON..= eventAction]
instance Property "EventAction" CompromisedCredentialsActionsTypeProperty where
  type PropertyType "EventAction" CompromisedCredentialsActionsTypeProperty = Value Prelude.Text
  set newValue CompromisedCredentialsActionsTypeProperty {..}
    = CompromisedCredentialsActionsTypeProperty
        {eventAction = newValue, ..}