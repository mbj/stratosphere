module Stratosphere.Chatbot.MicrosoftTeamsChannelConfiguration (
        MicrosoftTeamsChannelConfiguration(..),
        mkMicrosoftTeamsChannelConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MicrosoftTeamsChannelConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html>
    MicrosoftTeamsChannelConfiguration {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-configurationname>
                                        configurationName :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-customizationresourcearns>
                                        customizationResourceArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-guardrailpolicies>
                                        guardrailPolicies :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-iamrolearn>
                                        iamRoleArn :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-logginglevel>
                                        loggingLevel :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-snstopicarns>
                                        snsTopicArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-tags>
                                        tags :: (Prelude.Maybe [Tag]),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-teamid>
                                        teamId :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-teamschannelid>
                                        teamsChannelId :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-teamschannelname>
                                        teamsChannelName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-teamstenantid>
                                        teamsTenantId :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-microsoftteamschannelconfiguration.html#cfn-chatbot-microsoftteamschannelconfiguration-userrolerequired>
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
      {haddock_workaround_ = (), configurationName = configurationName,
       iamRoleArn = iamRoleArn, teamId = teamId,
       teamsChannelId = teamsChannelId, teamsTenantId = teamsTenantId,
       customizationResourceArns = Prelude.Nothing,
       guardrailPolicies = Prelude.Nothing,
       loggingLevel = Prelude.Nothing, snsTopicArns = Prelude.Nothing,
       tags = Prelude.Nothing, teamsChannelName = Prelude.Nothing,
       userRoleRequired = Prelude.Nothing}
instance ToResourceProperties MicrosoftTeamsChannelConfiguration where
  toResourceProperties MicrosoftTeamsChannelConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::Chatbot::MicrosoftTeamsChannelConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationName" JSON..= configurationName,
                            "IamRoleArn" JSON..= iamRoleArn, "TeamId" JSON..= teamId,
                            "TeamsChannelId" JSON..= teamsChannelId,
                            "TeamsTenantId" JSON..= teamsTenantId]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomizationResourceArns"
                                 Prelude.<$> customizationResourceArns,
                               (JSON..=) "GuardrailPolicies" Prelude.<$> guardrailPolicies,
                               (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
                               (JSON..=) "SnsTopicArns" Prelude.<$> snsTopicArns,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TeamsChannelName" Prelude.<$> teamsChannelName,
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
                 [(JSON..=) "CustomizationResourceArns"
                    Prelude.<$> customizationResourceArns,
                  (JSON..=) "GuardrailPolicies" Prelude.<$> guardrailPolicies,
                  (JSON..=) "LoggingLevel" Prelude.<$> loggingLevel,
                  (JSON..=) "SnsTopicArns" Prelude.<$> snsTopicArns,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TeamsChannelName" Prelude.<$> teamsChannelName,
                  (JSON..=) "UserRoleRequired" Prelude.<$> userRoleRequired])))
instance Property "ConfigurationName" MicrosoftTeamsChannelConfiguration where
  type PropertyType "ConfigurationName" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {configurationName = newValue, ..}
instance Property "CustomizationResourceArns" MicrosoftTeamsChannelConfiguration where
  type PropertyType "CustomizationResourceArns" MicrosoftTeamsChannelConfiguration = ValueList Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {customizationResourceArns = Prelude.pure newValue, ..}
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
instance Property "Tags" MicrosoftTeamsChannelConfiguration where
  type PropertyType "Tags" MicrosoftTeamsChannelConfiguration = [Tag]
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {tags = Prelude.pure newValue, ..}
instance Property "TeamId" MicrosoftTeamsChannelConfiguration where
  type PropertyType "TeamId" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration {teamId = newValue, ..}
instance Property "TeamsChannelId" MicrosoftTeamsChannelConfiguration where
  type PropertyType "TeamsChannelId" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {teamsChannelId = newValue, ..}
instance Property "TeamsChannelName" MicrosoftTeamsChannelConfiguration where
  type PropertyType "TeamsChannelName" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {teamsChannelName = Prelude.pure newValue, ..}
instance Property "TeamsTenantId" MicrosoftTeamsChannelConfiguration where
  type PropertyType "TeamsTenantId" MicrosoftTeamsChannelConfiguration = Value Prelude.Text
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration {teamsTenantId = newValue, ..}
instance Property "UserRoleRequired" MicrosoftTeamsChannelConfiguration where
  type PropertyType "UserRoleRequired" MicrosoftTeamsChannelConfiguration = Value Prelude.Bool
  set newValue MicrosoftTeamsChannelConfiguration {..}
    = MicrosoftTeamsChannelConfiguration
        {userRoleRequired = Prelude.pure newValue, ..}