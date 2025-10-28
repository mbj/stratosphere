module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.CompromisedCredentialsRiskConfigurationTypeProperty (
        module Exports,
        CompromisedCredentialsRiskConfigurationTypeProperty(..),
        mkCompromisedCredentialsRiskConfigurationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.CompromisedCredentialsActionsTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CompromisedCredentialsRiskConfigurationTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype.html>
    CompromisedCredentialsRiskConfigurationTypeProperty {haddock_workaround_ :: (),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype-actions>
                                                         actions :: CompromisedCredentialsActionsTypeProperty,
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype-eventfilter>
                                                         eventFilter :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCompromisedCredentialsRiskConfigurationTypeProperty ::
  CompromisedCredentialsActionsTypeProperty
  -> CompromisedCredentialsRiskConfigurationTypeProperty
mkCompromisedCredentialsRiskConfigurationTypeProperty actions
  = CompromisedCredentialsRiskConfigurationTypeProperty
      {haddock_workaround_ = (), actions = actions,
       eventFilter = Prelude.Nothing}
instance ToResourceProperties CompromisedCredentialsRiskConfigurationTypeProperty where
  toResourceProperties
    CompromisedCredentialsRiskConfigurationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.CompromisedCredentialsRiskConfigurationType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions]
                           (Prelude.catMaybes
                              [(JSON..=) "EventFilter" Prelude.<$> eventFilter]))}
instance JSON.ToJSON CompromisedCredentialsRiskConfigurationTypeProperty where
  toJSON CompromisedCredentialsRiskConfigurationTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions]
              (Prelude.catMaybes
                 [(JSON..=) "EventFilter" Prelude.<$> eventFilter])))
instance Property "Actions" CompromisedCredentialsRiskConfigurationTypeProperty where
  type PropertyType "Actions" CompromisedCredentialsRiskConfigurationTypeProperty = CompromisedCredentialsActionsTypeProperty
  set
    newValue
    CompromisedCredentialsRiskConfigurationTypeProperty {..}
    = CompromisedCredentialsRiskConfigurationTypeProperty
        {actions = newValue, ..}
instance Property "EventFilter" CompromisedCredentialsRiskConfigurationTypeProperty where
  type PropertyType "EventFilter" CompromisedCredentialsRiskConfigurationTypeProperty = ValueList Prelude.Text
  set
    newValue
    CompromisedCredentialsRiskConfigurationTypeProperty {..}
    = CompromisedCredentialsRiskConfigurationTypeProperty
        {eventFilter = Prelude.pure newValue, ..}