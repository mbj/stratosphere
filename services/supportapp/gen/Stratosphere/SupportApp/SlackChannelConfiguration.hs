module Stratosphere.SupportApp.SlackChannelConfiguration (
        SlackChannelConfiguration(..), mkSlackChannelConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlackChannelConfiguration
  = SlackChannelConfiguration {channelId :: (Value Prelude.Text),
                               channelName :: (Prelude.Maybe (Value Prelude.Text)),
                               channelRoleArn :: (Value Prelude.Text),
                               notifyOnAddCorrespondenceToCase :: (Prelude.Maybe (Value Prelude.Bool)),
                               notifyOnCaseSeverity :: (Value Prelude.Text),
                               notifyOnCreateOrReopenCase :: (Prelude.Maybe (Value Prelude.Bool)),
                               notifyOnResolveCase :: (Prelude.Maybe (Value Prelude.Bool)),
                               teamId :: (Value Prelude.Text)}
mkSlackChannelConfiguration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> SlackChannelConfiguration
mkSlackChannelConfiguration
  channelId
  channelRoleArn
  notifyOnCaseSeverity
  teamId
  = SlackChannelConfiguration
      {channelId = channelId, channelRoleArn = channelRoleArn,
       notifyOnCaseSeverity = notifyOnCaseSeverity, teamId = teamId,
       channelName = Prelude.Nothing,
       notifyOnAddCorrespondenceToCase = Prelude.Nothing,
       notifyOnCreateOrReopenCase = Prelude.Nothing,
       notifyOnResolveCase = Prelude.Nothing}
instance ToResourceProperties SlackChannelConfiguration where
  toResourceProperties SlackChannelConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::SupportApp::SlackChannelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelId" JSON..= channelId,
                            "ChannelRoleArn" JSON..= channelRoleArn,
                            "NotifyOnCaseSeverity" JSON..= notifyOnCaseSeverity,
                            "TeamId" JSON..= teamId]
                           (Prelude.catMaybes
                              [(JSON..=) "ChannelName" Prelude.<$> channelName,
                               (JSON..=) "NotifyOnAddCorrespondenceToCase"
                                 Prelude.<$> notifyOnAddCorrespondenceToCase,
                               (JSON..=) "NotifyOnCreateOrReopenCase"
                                 Prelude.<$> notifyOnCreateOrReopenCase,
                               (JSON..=) "NotifyOnResolveCase" Prelude.<$> notifyOnResolveCase]))}
instance JSON.ToJSON SlackChannelConfiguration where
  toJSON SlackChannelConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelId" JSON..= channelId,
               "ChannelRoleArn" JSON..= channelRoleArn,
               "NotifyOnCaseSeverity" JSON..= notifyOnCaseSeverity,
               "TeamId" JSON..= teamId]
              (Prelude.catMaybes
                 [(JSON..=) "ChannelName" Prelude.<$> channelName,
                  (JSON..=) "NotifyOnAddCorrespondenceToCase"
                    Prelude.<$> notifyOnAddCorrespondenceToCase,
                  (JSON..=) "NotifyOnCreateOrReopenCase"
                    Prelude.<$> notifyOnCreateOrReopenCase,
                  (JSON..=) "NotifyOnResolveCase" Prelude.<$> notifyOnResolveCase])))
instance Property "ChannelId" SlackChannelConfiguration where
  type PropertyType "ChannelId" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration {channelId = newValue, ..}
instance Property "ChannelName" SlackChannelConfiguration where
  type PropertyType "ChannelName" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration
        {channelName = Prelude.pure newValue, ..}
instance Property "ChannelRoleArn" SlackChannelConfiguration where
  type PropertyType "ChannelRoleArn" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration {channelRoleArn = newValue, ..}
instance Property "NotifyOnAddCorrespondenceToCase" SlackChannelConfiguration where
  type PropertyType "NotifyOnAddCorrespondenceToCase" SlackChannelConfiguration = Value Prelude.Bool
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration
        {notifyOnAddCorrespondenceToCase = Prelude.pure newValue, ..}
instance Property "NotifyOnCaseSeverity" SlackChannelConfiguration where
  type PropertyType "NotifyOnCaseSeverity" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration {notifyOnCaseSeverity = newValue, ..}
instance Property "NotifyOnCreateOrReopenCase" SlackChannelConfiguration where
  type PropertyType "NotifyOnCreateOrReopenCase" SlackChannelConfiguration = Value Prelude.Bool
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration
        {notifyOnCreateOrReopenCase = Prelude.pure newValue, ..}
instance Property "NotifyOnResolveCase" SlackChannelConfiguration where
  type PropertyType "NotifyOnResolveCase" SlackChannelConfiguration = Value Prelude.Bool
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration
        {notifyOnResolveCase = Prelude.pure newValue, ..}
instance Property "TeamId" SlackChannelConfiguration where
  type PropertyType "TeamId" SlackChannelConfiguration = Value Prelude.Text
  set newValue SlackChannelConfiguration {..}
    = SlackChannelConfiguration {teamId = newValue, ..}