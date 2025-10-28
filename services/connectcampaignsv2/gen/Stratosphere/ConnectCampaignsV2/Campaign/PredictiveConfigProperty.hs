module Stratosphere.ConnectCampaignsV2.Campaign.PredictiveConfigProperty (
        PredictiveConfigProperty(..), mkPredictiveConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-predictiveconfig.html>
    PredictiveConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-predictiveconfig.html#cfn-connectcampaignsv2-campaign-predictiveconfig-bandwidthallocation>
                              bandwidthAllocation :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveConfigProperty ::
  Value Prelude.Double -> PredictiveConfigProperty
mkPredictiveConfigProperty bandwidthAllocation
  = PredictiveConfigProperty
      {haddock_workaround_ = (),
       bandwidthAllocation = bandwidthAllocation}
instance ToResourceProperties PredictiveConfigProperty where
  toResourceProperties PredictiveConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.PredictiveConfig",
         supportsTags = Prelude.False,
         properties = ["BandwidthAllocation" JSON..= bandwidthAllocation]}
instance JSON.ToJSON PredictiveConfigProperty where
  toJSON PredictiveConfigProperty {..}
    = JSON.object ["BandwidthAllocation" JSON..= bandwidthAllocation]
instance Property "BandwidthAllocation" PredictiveConfigProperty where
  type PropertyType "BandwidthAllocation" PredictiveConfigProperty = Value Prelude.Double
  set newValue PredictiveConfigProperty {..}
    = PredictiveConfigProperty {bandwidthAllocation = newValue, ..}