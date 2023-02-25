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
  = ProgressiveDialerConfigProperty {bandwidthAllocation :: (Value Prelude.Double)}
mkProgressiveDialerConfigProperty ::
  Value Prelude.Double -> ProgressiveDialerConfigProperty
mkProgressiveDialerConfigProperty bandwidthAllocation
  = ProgressiveDialerConfigProperty
      {bandwidthAllocation = bandwidthAllocation}
instance ToResourceProperties ProgressiveDialerConfigProperty where
  toResourceProperties ProgressiveDialerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.ProgressiveDialerConfig",
         properties = ["BandwidthAllocation" JSON..= bandwidthAllocation]}
instance JSON.ToJSON ProgressiveDialerConfigProperty where
  toJSON ProgressiveDialerConfigProperty {..}
    = JSON.object ["BandwidthAllocation" JSON..= bandwidthAllocation]
instance Property "BandwidthAllocation" ProgressiveDialerConfigProperty where
  type PropertyType "BandwidthAllocation" ProgressiveDialerConfigProperty = Value Prelude.Double
  set newValue ProgressiveDialerConfigProperty {}
    = ProgressiveDialerConfigProperty
        {bandwidthAllocation = newValue, ..}