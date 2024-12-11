module Stratosphere.ConnectCampaignsV2.Campaign (
        module Exports, Campaign(..), mkCampaign
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.ChannelSubtypeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.CommunicationLimitsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.CommunicationTimeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.ScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.SourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Campaign
  = Campaign {channelSubtypeConfig :: ChannelSubtypeConfigProperty,
              communicationLimitsOverride :: (Prelude.Maybe CommunicationLimitsConfigProperty),
              communicationTimeConfig :: (Prelude.Maybe CommunicationTimeConfigProperty),
              connectCampaignFlowArn :: (Prelude.Maybe (Value Prelude.Text)),
              connectInstanceId :: (Value Prelude.Text),
              name :: (Value Prelude.Text),
              schedule :: (Prelude.Maybe ScheduleProperty),
              source :: (Prelude.Maybe SourceProperty),
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCampaign ::
  ChannelSubtypeConfigProperty
  -> Value Prelude.Text -> Value Prelude.Text -> Campaign
mkCampaign channelSubtypeConfig connectInstanceId name
  = Campaign
      {channelSubtypeConfig = channelSubtypeConfig,
       connectInstanceId = connectInstanceId, name = name,
       communicationLimitsOverride = Prelude.Nothing,
       communicationTimeConfig = Prelude.Nothing,
       connectCampaignFlowArn = Prelude.Nothing,
       schedule = Prelude.Nothing, source = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Campaign where
  toResourceProperties Campaign {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelSubtypeConfig" JSON..= channelSubtypeConfig,
                            "ConnectInstanceId" JSON..= connectInstanceId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CommunicationLimitsOverride"
                                 Prelude.<$> communicationLimitsOverride,
                               (JSON..=) "CommunicationTimeConfig"
                                 Prelude.<$> communicationTimeConfig,
                               (JSON..=) "ConnectCampaignFlowArn"
                                 Prelude.<$> connectCampaignFlowArn,
                               (JSON..=) "Schedule" Prelude.<$> schedule,
                               (JSON..=) "Source" Prelude.<$> source,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Campaign where
  toJSON Campaign {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelSubtypeConfig" JSON..= channelSubtypeConfig,
               "ConnectInstanceId" JSON..= connectInstanceId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CommunicationLimitsOverride"
                    Prelude.<$> communicationLimitsOverride,
                  (JSON..=) "CommunicationTimeConfig"
                    Prelude.<$> communicationTimeConfig,
                  (JSON..=) "ConnectCampaignFlowArn"
                    Prelude.<$> connectCampaignFlowArn,
                  (JSON..=) "Schedule" Prelude.<$> schedule,
                  (JSON..=) "Source" Prelude.<$> source,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ChannelSubtypeConfig" Campaign where
  type PropertyType "ChannelSubtypeConfig" Campaign = ChannelSubtypeConfigProperty
  set newValue Campaign {..}
    = Campaign {channelSubtypeConfig = newValue, ..}
instance Property "CommunicationLimitsOverride" Campaign where
  type PropertyType "CommunicationLimitsOverride" Campaign = CommunicationLimitsConfigProperty
  set newValue Campaign {..}
    = Campaign
        {communicationLimitsOverride = Prelude.pure newValue, ..}
instance Property "CommunicationTimeConfig" Campaign where
  type PropertyType "CommunicationTimeConfig" Campaign = CommunicationTimeConfigProperty
  set newValue Campaign {..}
    = Campaign {communicationTimeConfig = Prelude.pure newValue, ..}
instance Property "ConnectCampaignFlowArn" Campaign where
  type PropertyType "ConnectCampaignFlowArn" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {connectCampaignFlowArn = Prelude.pure newValue, ..}
instance Property "ConnectInstanceId" Campaign where
  type PropertyType "ConnectInstanceId" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {connectInstanceId = newValue, ..}
instance Property "Name" Campaign where
  type PropertyType "Name" Campaign = Value Prelude.Text
  set newValue Campaign {..} = Campaign {name = newValue, ..}
instance Property "Schedule" Campaign where
  type PropertyType "Schedule" Campaign = ScheduleProperty
  set newValue Campaign {..}
    = Campaign {schedule = Prelude.pure newValue, ..}
instance Property "Source" Campaign where
  type PropertyType "Source" Campaign = SourceProperty
  set newValue Campaign {..}
    = Campaign {source = Prelude.pure newValue, ..}
instance Property "Tags" Campaign where
  type PropertyType "Tags" Campaign = [Tag]
  set newValue Campaign {..}
    = Campaign {tags = Prelude.pure newValue, ..}