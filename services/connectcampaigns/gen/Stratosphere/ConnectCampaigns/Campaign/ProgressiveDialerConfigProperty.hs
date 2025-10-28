module Stratosphere.ConnectCampaigns.Campaign.ProgressiveDialerConfigProperty (
        ProgressiveDialerConfigProperty(..),
        mkProgressiveDialerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProgressiveDialerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-progressivedialerconfig.html>
    ProgressiveDialerConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-progressivedialerconfig.html#cfn-connectcampaigns-campaign-progressivedialerconfig-bandwidthallocation>
                                     bandwidthAllocation :: (Value Prelude.Double),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaigns-campaign-progressivedialerconfig.html#cfn-connectcampaigns-campaign-progressivedialerconfig-dialingcapacity>
                                     dialingCapacity :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProgressiveDialerConfigProperty ::
  Value Prelude.Double -> ProgressiveDialerConfigProperty
mkProgressiveDialerConfigProperty bandwidthAllocation
  = ProgressiveDialerConfigProperty
      {haddock_workaround_ = (),
       bandwidthAllocation = bandwidthAllocation,
       dialingCapacity = Prelude.Nothing}
instance ToResourceProperties ProgressiveDialerConfigProperty where
  toResourceProperties ProgressiveDialerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.ProgressiveDialerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BandwidthAllocation" JSON..= bandwidthAllocation]
                           (Prelude.catMaybes
                              [(JSON..=) "DialingCapacity" Prelude.<$> dialingCapacity]))}
instance JSON.ToJSON ProgressiveDialerConfigProperty where
  toJSON ProgressiveDialerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BandwidthAllocation" JSON..= bandwidthAllocation]
              (Prelude.catMaybes
                 [(JSON..=) "DialingCapacity" Prelude.<$> dialingCapacity])))
instance Property "BandwidthAllocation" ProgressiveDialerConfigProperty where
  type PropertyType "BandwidthAllocation" ProgressiveDialerConfigProperty = Value Prelude.Double
  set newValue ProgressiveDialerConfigProperty {..}
    = ProgressiveDialerConfigProperty
        {bandwidthAllocation = newValue, ..}
instance Property "DialingCapacity" ProgressiveDialerConfigProperty where
  type PropertyType "DialingCapacity" ProgressiveDialerConfigProperty = Value Prelude.Double
  set newValue ProgressiveDialerConfigProperty {..}
    = ProgressiveDialerConfigProperty
        {dialingCapacity = Prelude.pure newValue, ..}