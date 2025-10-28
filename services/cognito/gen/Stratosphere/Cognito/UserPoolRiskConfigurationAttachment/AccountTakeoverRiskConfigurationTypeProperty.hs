module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationTypeProperty (
        module Exports, AccountTakeoverRiskConfigurationTypeProperty(..),
        mkAccountTakeoverRiskConfigurationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionsTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.NotifyConfigurationTypeProperty as Exports
import Stratosphere.ResourceProperties
data AccountTakeoverRiskConfigurationTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html>
    AccountTakeoverRiskConfigurationTypeProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-actions>
                                                  actions :: AccountTakeoverActionsTypeProperty,
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfigurationtype-notifyconfiguration>
                                                  notifyConfiguration :: (Prelude.Maybe NotifyConfigurationTypeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountTakeoverRiskConfigurationTypeProperty ::
  AccountTakeoverActionsTypeProperty
  -> AccountTakeoverRiskConfigurationTypeProperty
mkAccountTakeoverRiskConfigurationTypeProperty actions
  = AccountTakeoverRiskConfigurationTypeProperty
      {haddock_workaround_ = (), actions = actions,
       notifyConfiguration = Prelude.Nothing}
instance ToResourceProperties AccountTakeoverRiskConfigurationTypeProperty where
  toResourceProperties
    AccountTakeoverRiskConfigurationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions]
                           (Prelude.catMaybes
                              [(JSON..=) "NotifyConfiguration"
                                 Prelude.<$> notifyConfiguration]))}
instance JSON.ToJSON AccountTakeoverRiskConfigurationTypeProperty where
  toJSON AccountTakeoverRiskConfigurationTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions]
              (Prelude.catMaybes
                 [(JSON..=) "NotifyConfiguration"
                    Prelude.<$> notifyConfiguration])))
instance Property "Actions" AccountTakeoverRiskConfigurationTypeProperty where
  type PropertyType "Actions" AccountTakeoverRiskConfigurationTypeProperty = AccountTakeoverActionsTypeProperty
  set newValue AccountTakeoverRiskConfigurationTypeProperty {..}
    = AccountTakeoverRiskConfigurationTypeProperty
        {actions = newValue, ..}
instance Property "NotifyConfiguration" AccountTakeoverRiskConfigurationTypeProperty where
  type PropertyType "NotifyConfiguration" AccountTakeoverRiskConfigurationTypeProperty = NotifyConfigurationTypeProperty
  set newValue AccountTakeoverRiskConfigurationTypeProperty {..}
    = AccountTakeoverRiskConfigurationTypeProperty
        {notifyConfiguration = Prelude.pure newValue, ..}