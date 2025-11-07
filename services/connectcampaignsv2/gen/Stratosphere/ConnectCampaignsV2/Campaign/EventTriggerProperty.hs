module Stratosphere.ConnectCampaignsV2.Campaign.EventTriggerProperty (
        EventTriggerProperty(..), mkEventTriggerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventTriggerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-eventtrigger.html>
    EventTriggerProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-eventtrigger.html#cfn-connectcampaignsv2-campaign-eventtrigger-customerprofilesdomainarn>
                          customerProfilesDomainArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventTriggerProperty :: EventTriggerProperty
mkEventTriggerProperty
  = EventTriggerProperty
      {haddock_workaround_ = (),
       customerProfilesDomainArn = Prelude.Nothing}
instance ToResourceProperties EventTriggerProperty where
  toResourceProperties EventTriggerProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.EventTrigger",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerProfilesDomainArn"
                              Prelude.<$> customerProfilesDomainArn])}
instance JSON.ToJSON EventTriggerProperty where
  toJSON EventTriggerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerProfilesDomainArn"
                 Prelude.<$> customerProfilesDomainArn]))
instance Property "CustomerProfilesDomainArn" EventTriggerProperty where
  type PropertyType "CustomerProfilesDomainArn" EventTriggerProperty = Value Prelude.Text
  set newValue EventTriggerProperty {..}
    = EventTriggerProperty
        {customerProfilesDomainArn = Prelude.pure newValue, ..}