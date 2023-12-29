module Stratosphere.Chatbot.MicrosoftTeamsChannelConfiguration (
        MicrosoftTeamsChannelConfiguration(..),
        mkMicrosoftTeamsChannelConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MicrosoftTeamsChannelConfiguration
  = MicrosoftTeamsChannelConfiguration {configurationName :: (Value Prelude.Text),
                                        guardrailPolicies :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        iamRoleArn :: (Value Prelude.Text),
                                        loggingLevel :: (Prelude.Maybe (Value Prelude.Text)),
                                        snsTopicArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        teamId :: (Value Prelude.Text),
                                        teamsChannelId :: (Value Prelude.Text),
                                        teamsTenantId :: (Value Prelude.Text),
                                        userRoleRequired :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMicrosoftTeamsChannelConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> MicrosoftTeamsChannelConfiguration
mkMicrosoftTeamsChannelConfiguration
  configurationName
  iamRoleArn
  teamId
  teamsChannelId
  teamsTenantId
  = MicrosoftTeamsChannelConfiguration
      {configurationName = configurationName, iamRoleArn = iamRoleArn,
       teamId = teamId, teamsChannelId = teamsChannelId,
       teamsTenantId = teamsTenantId, guardrailPolicies = Prelude.Nothing,
       loggingLevel = Prelude.Nothing, snsTopicArns = Prelude.Nothing,
       userRoleRequired = Prelude.Nothing}
instance ToResourceProperties MicrosoftTeamsChannelConfiguration where
  toResourceProperties MicrosoftTeamsChannelConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::Chatbot::MicrosoftTeamsChannelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationName" JSON..= configurationName,
                            "IamRoleArn" JSON..= iamRoleArn, "TeamId" JSON..= teamId,
                            "TeamsChannelId" JSON..= teamsChannelId,
                            "TeamsTenantId" JSON..= teamsTenantId]
                           (Prelude.catMaybes
                              [(JSON..=) "GuardrailPolicies" Prelude.<$> guardrailPolicies,
                               (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
                               (JSON..=) "SnsTopicArns" Prelude.<$> snsTopicArns,
                               (JSON..=) "UserRoleRequired" Prelude.<$> userRoleRequired]))}
instance JSON.ToJSON MicrosoftTeamsChannelConfiguration where
  toJSON MicrosoftTeamsChannelConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationName" JSON..= configurationName,
               "IamRoleArn" JSON..= iamRoleArn, "TeamId" JSON..= teamId,
               "TeamsChannelId" JSON..= teamsChannelId,
               "TeamsTenantId" JSON..= teamsTenantId]
              (Prelude.catMaybes
                 [(JSON..=) "GuardrailPolicies" Prelude.<$> guardrailPolicies,
                  (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
                  (JSON..=) "SnsTopicArns" Prelude.<$> snsTopicArns,
                  (JSON..=) "UserRoleRequired" Prelude.<$> userRoleRequired])))
instance Property "ConfigurationName" MicrosoftTeamsChannelConfiguration where
  type PropertyType "ConfigurationName" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {configurationName = newValue, ..}
instance Property "GuardrailPolicies" MicrosoftTeamsChannelConfiguration where
  type PropertyType "GuardrailPolicies" MicrosoftTeamsChannelConfiguration = ValueList Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {guardrailPolicies = Prelude.pure newValue, ..}
instance Property "IamRoleArn" MicrosoftTeamsChannelConfiguration where
  type PropertyType "IamRoleArn" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration {iamRoleArn = newValue, ..}
instance Property "LoggingLevel" MicrosoftTeamsChannelConfiguration where
  type PropertyType "LoggingLevel" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {loggingLevel = Prelude.pure newValue, ..}
instance Property "SnsTopicArns" MicrosoftTeamsChannelConfiguration where
  type PropertyType "SnsTopicArns" MicrosoftTeamsChannelConfiguration = ValueList Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {snsTopicArns = Prelude.pure newValue, ..}
instance Property "TeamId" MicrosoftTeamsChannelConfiguration where
  type PropertyType "TeamId" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration {teamId = newValue, ..}
instance Property "TeamsChannelId" MicrosoftTeamsChannelConfiguration where
  type PropertyType "TeamsChannelId" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {teamsChannelId = newValue, ..}
instance Property "TeamsTenantId" MicrosoftTeamsChannelConfiguration where
  type PropertyType "TeamsTenantId" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration {teamsTenantId = newValue, ..}
instance Property "UserRoleRequired" MicrosoftTeamsChannelConfiguration where
  type PropertyType "UserRoleRequired" MicrosoftTeamsChannelConfiguration = Value Prelude.Bool
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {userRoleRequired = Prelude.pure newValue, ..}