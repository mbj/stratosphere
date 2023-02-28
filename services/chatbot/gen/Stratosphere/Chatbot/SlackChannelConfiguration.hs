module Stratosphere.Chatbot.SlackChannelConfiguration (
        SlackChannelConfiguration(..), mkSlackChannelConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlackChannelConfiguration
  = SlackChannelConfiguration {configurationName :: (Value Prelude.Text),
                               guardrailPolicies :: (Prelude.Maybe (ValueList Prelude.Text)),
                               iamRoleArn :: (Value Prelude.Text),
                               loggingLevel :: (Prelude.Maybe (Value Prelude.Text)),
                               slackChannelId :: (Value Prelude.Text),
                               slackWorkspaceId :: (Value Prelude.Text),
                               snsTopicArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                               userRoleRequired :: (Prelude.Maybe (Value Prelude.Bool))}
mkSlackChannelConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> SlackChannelConfiguration
mkSlackChannelConfiguration
  configurationName
  iamRoleArn
  slackChannelId
  slackWorkspaceId
  = SlackChannelConfiguration
      {configurationName = configurationName, iamRoleArn = iamRoleArn,
       slackChannelId = slackChannelId,
       slackWorkspaceId = slackWorkspaceId,
       guardrailPolicies = Prelude.Nothing,
       loggingLevel = Prelude.Nothing, snsTopicArns = Prelude.Nothing,
       userRoleRequired = Prelude.Nothing}
instance ToResourceProperties SlackChannelConfiguration where
  toResourceProperties SlackChannelConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::Chatbot::SlackChannelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationName" JSON..= configurationName,
                            "IamRoleArn" JSON..= iamRoleArn,
                            "SlackChannelId" JSON..= slackChannelId,
                            "SlackWorkspaceId" JSON..= slackWorkspaceId]
                           (Prelude.catMaybes
                              [(JSON..=) "GuardrailPolicies" Prelude.<$> guardrailPolicies,
                               (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
                               (JSON..=) "SnsTopicArns" Prelude.<$> snsTopicArns,
                               (JSON..=) "UserRoleRequired" Prelude.<$> userRoleRequired]))}
instance JSON.ToJSON SlackChannelConfiguration where
  toJSON SlackChannelConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationName" JSON..= configurationName,
               "IamRoleArn" JSON..= iamRoleArn,
               "SlackChannelId" JSON..= slackChannelId,
               "SlackWorkspaceId" JSON..= slackWorkspaceId]
              (Prelude.catMaybes
                 [(JSON..=) "GuardrailPolicies" Prelude.<$> guardrailPolicies,
                  (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
                  (JSON..=) "SnsTopicArns" Prelude.<$> snsTopicArns,
                  (JSON..=) "UserRoleRequired" Prelude.<$> userRoleRequired])))
instance Property "ConfigurationName" SlackChannelConfiguration where
  type PropertyType "ConfigurationName" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration {configurationName = newValue, ..}
instance Property "GuardrailPolicies" SlackChannelConfiguration where
  type PropertyType "GuardrailPolicies" SlackChannelConfiguration = ValueList Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration
        {guardrailPolicies = Prelude.pure newValue, ..}
instance Property "IamRoleArn" SlackChannelConfiguration where
  type PropertyType "IamRoleArn" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration {iamRoleArn = newValue, ..}
instance Property "LoggingLevel" SlackChannelConfiguration where
  type PropertyType "LoggingLevel" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration
        {loggingLevel = Prelude.pure newValue, ..}
instance Property "SlackChannelId" SlackChannelConfiguration where
  type PropertyType "SlackChannelId" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration {slackChannelId = newValue, ..}
instance Property "SlackWorkspaceId" SlackChannelConfiguration where
  type PropertyType "SlackWorkspaceId" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration {slackWorkspaceId = newValue, ..}
instance Property "SnsTopicArns" SlackChannelConfiguration where
  type PropertyType "SnsTopicArns" SlackChannelConfiguration = ValueList Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration
        {snsTopicArns = Prelude.pure newValue, ..}
instance Property "UserRoleRequired" SlackChannelConfiguration where
  type PropertyType "UserRoleRequired" SlackChannelConfiguration = Value Prelude.Bool
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration
        {userRoleRequired = Prelude.pure newValue, ..}