module Stratosphere.ConnectCampaignsV2.Campaign.SourceProperty (
        module Exports, SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.EventTriggerProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-source.html>
    SourceProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-source.html#cfn-connectcampaignsv2-campaign-source-customerprofilessegmentarn>
                    customerProfilesSegmentArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-source.html#cfn-connectcampaignsv2-campaign-source-eventtrigger>
                    eventTrigger :: (Prelude.Maybe EventTriggerProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: SourceProperty
mkSourceProperty
  = SourceProperty
      {haddock_workaround_ = (),
       customerProfilesSegmentArn = Prelude.Nothing,
       eventTrigger = Prelude.Nothing}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.Source",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerProfilesSegmentArn"
                              Prelude.<$> customerProfilesSegmentArn,
                            (JSON..=) "EventTrigger" Prelude.<$> eventTrigger])}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerProfilesSegmentArn"
                 Prelude.<$> customerProfilesSegmentArn,
               (JSON..=) "EventTrigger" Prelude.<$> eventTrigger]))
instance Property "CustomerProfilesSegmentArn" SourceProperty where
  type PropertyType "CustomerProfilesSegmentArn" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty
        {customerProfilesSegmentArn = Prelude.pure newValue, ..}
instance Property "EventTrigger" SourceProperty where
  type PropertyType "EventTrigger" SourceProperty = EventTriggerProperty
  set newValue SourceProperty {..}
    = SourceProperty {eventTrigger = Prelude.pure newValue, ..}