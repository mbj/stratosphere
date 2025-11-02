module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment (
        module Exports, UserPoolRiskConfigurationAttachment(..),
        mkUserPoolRiskConfigurationAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.CompromisedCredentialsRiskConfigurationTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.RiskExceptionConfigurationTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolRiskConfigurationAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html>
    UserPoolRiskConfigurationAttachment {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfiguration>
                                         accountTakeoverRiskConfiguration :: (Prelude.Maybe AccountTakeoverRiskConfigurationTypeProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-clientid>
                                         clientId :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfiguration>
                                         compromisedCredentialsRiskConfiguration :: (Prelude.Maybe CompromisedCredentialsRiskConfigurationTypeProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfiguration>
                                         riskExceptionConfiguration :: (Prelude.Maybe RiskExceptionConfigurationTypeProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-userpoolid>
                                         userPoolId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPoolRiskConfigurationAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text -> UserPoolRiskConfigurationAttachment
mkUserPoolRiskConfigurationAttachment clientId userPoolId
  = UserPoolRiskConfigurationAttachment
      {haddock_workaround_ = (), clientId = clientId,
       userPoolId = userPoolId,
       accountTakeoverRiskConfiguration = Prelude.Nothing,
       compromisedCredentialsRiskConfiguration = Prelude.Nothing,
       riskExceptionConfiguration = Prelude.Nothing}
instance ToResourceProperties UserPoolRiskConfigurationAttachment where
  toResourceProperties UserPoolRiskConfigurationAttachment {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientId" JSON..= clientId, "UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "AccountTakeoverRiskConfiguration"
                                 Prelude.<$> accountTakeoverRiskConfiguration,
                               (JSON..=) "CompromisedCredentialsRiskConfiguration"
                                 Prelude.<$> compromisedCredentialsRiskConfiguration,
                               (JSON..=) "RiskExceptionConfiguration"
                                 Prelude.<$> riskExceptionConfiguration]))}
instance JSON.ToJSON UserPoolRiskConfigurationAttachment where
  toJSON UserPoolRiskConfigurationAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientId" JSON..= clientId, "UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "AccountTakeoverRiskConfiguration"
                    Prelude.<$> accountTakeoverRiskConfiguration,
                  (JSON..=) "CompromisedCredentialsRiskConfiguration"
                    Prelude.<$> compromisedCredentialsRiskConfiguration,
                  (JSON..=) "RiskExceptionConfiguration"
                    Prelude.<$> riskExceptionConfiguration])))
instance Property "AccountTakeoverRiskConfiguration" UserPoolRiskConfigurationAttachment where
  type PropertyType "AccountTakeoverRiskConfiguration" UserPoolRiskConfigurationAttachment = AccountTakeoverRiskConfigurationTypeProperty
  set newValue UserPoolRiskConfigurationAttachment {..}
    = UserPoolRiskConfigurationAttachment
        {accountTakeoverRiskConfiguration = Prelude.pure newValue, ..}
instance Property "ClientId" UserPoolRiskConfigurationAttachment where
  type PropertyType "ClientId" UserPoolRiskConfigurationAttachment = Value Prelude.Text
  set newValue UserPoolRiskConfigurationAttachment {..}
    = UserPoolRiskConfigurationAttachment {clientId = newValue, ..}
instance Property "CompromisedCredentialsRiskConfiguration" UserPoolRiskConfigurationAttachment where
  type PropertyType "CompromisedCredentialsRiskConfiguration" UserPoolRiskConfigurationAttachment = CompromisedCredentialsRiskConfigurationTypeProperty
  set newValue UserPoolRiskConfigurationAttachment {..}
    = UserPoolRiskConfigurationAttachment
        {compromisedCredentialsRiskConfiguration = Prelude.pure newValue,
         ..}
instance Property "RiskExceptionConfiguration" UserPoolRiskConfigurationAttachment where
  type PropertyType "RiskExceptionConfiguration" UserPoolRiskConfigurationAttachment = RiskExceptionConfigurationTypeProperty
  set newValue UserPoolRiskConfigurationAttachment {..}
    = UserPoolRiskConfigurationAttachment
        {riskExceptionConfiguration = Prelude.pure newValue, ..}
instance Property "UserPoolId" UserPoolRiskConfigurationAttachment where
  type PropertyType "UserPoolId" UserPoolRiskConfigurationAttachment = Value Prelude.Text
  set newValue UserPoolRiskConfigurationAttachment {..}
    = UserPoolRiskConfigurationAttachment {userPoolId = newValue, ..}