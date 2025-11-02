module Stratosphere.ConnectCampaignsV2.Campaign.ProgressiveConfigProperty (
        ProgressiveConfigProperty(..), mkProgressiveConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProgressiveConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-progressiveconfig.html>
    ProgressiveConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-progressiveconfig.html#cfn-connectcampaignsv2-campaign-progressiveconfig-bandwidthallocation>
                               bandwidthAllocation :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProgressiveConfigProperty ::
  Value Prelude.Double -> ProgressiveConfigProperty
mkProgressiveConfigProperty bandwidthAllocation
  = ProgressiveConfigProperty
      {haddock_workaround_ = (),
       bandwidthAllocation = bandwidthAllocation}
instance ToResourceProperties ProgressiveConfigProperty where
  toResourceProperties ProgressiveConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.ProgressiveConfig",
         supportsTags = Prelude.False,
         properties = ["BandwidthAllocation" JSON..= bandwidthAllocation]}
instance JSON.ToJSON ProgressiveConfigProperty where
  toJSON ProgressiveConfigProperty {..}
    = JSON.object ["BandwidthAllocation" JSON..= bandwidthAllocation]
instance Property "BandwidthAllocation" ProgressiveConfigProperty where
  type PropertyType "BandwidthAllocation" ProgressiveConfigProperty = Value Prelude.Double
  set newValue ProgressiveConfigProperty {..}
    = ProgressiveConfigProperty {bandwidthAllocation = newValue, ..}