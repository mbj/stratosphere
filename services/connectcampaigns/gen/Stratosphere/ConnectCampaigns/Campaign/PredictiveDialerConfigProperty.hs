module Stratosphere.ConnectCampaigns.Campaign.PredictiveDialerConfigProperty (
        PredictiveDialerConfigProperty(..),
        mkPredictiveDialerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveDialerConfigProperty
  = PredictiveDialerConfigProperty {bandwidthAllocation :: (Value Prelude.Double)}
mkPredictiveDialerConfigProperty ::
  Value Prelude.Double -> PredictiveDialerConfigProperty
mkPredictiveDialerConfigProperty bandwidthAllocation
  = PredictiveDialerConfigProperty
      {bandwidthAllocation = bandwidthAllocation}
instance ToResourceProperties PredictiveDialerConfigProperty where
  toResourceProperties PredictiveDialerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.PredictiveDialerConfig",
         properties = ["BandwidthAllocation" JSON..= bandwidthAllocation]}
instance JSON.ToJSON PredictiveDialerConfigProperty where
  toJSON PredictiveDialerConfigProperty {..}
    = JSON.object ["BandwidthAllocation" JSON..= bandwidthAllocation]
instance Property "BandwidthAllocation" PredictiveDialerConfigProperty where
  type PropertyType "BandwidthAllocation" PredictiveDialerConfigProperty = Value Prelude.Double
  set newValue PredictiveDialerConfigProperty {}
    = PredictiveDialerConfigProperty
        {bandwidthAllocation = newValue, ..}