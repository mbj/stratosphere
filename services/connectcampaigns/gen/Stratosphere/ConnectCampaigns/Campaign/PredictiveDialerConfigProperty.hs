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
  = PredictiveDialerConfigProperty {bandwidthAllocation :: (Value Prelude.Double),
                                    dialingCapacity :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveDialerConfigProperty ::
  Value Prelude.Double -> PredictiveDialerConfigProperty
mkPredictiveDialerConfigProperty bandwidthAllocation
  = PredictiveDialerConfigProperty
      {bandwidthAllocation = bandwidthAllocation,
       dialingCapacity = Prelude.Nothing}
instance ToResourceProperties PredictiveDialerConfigProperty where
  toResourceProperties PredictiveDialerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.PredictiveDialerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BandwidthAllocation" JSON..= bandwidthAllocation]
                           (Prelude.catMaybes
                              [(JSON..=) "DialingCapacity" Prelude.<$> dialingCapacity]))}
instance JSON.ToJSON PredictiveDialerConfigProperty where
  toJSON PredictiveDialerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BandwidthAllocation" JSON..= bandwidthAllocation]
              (Prelude.catMaybes
                 [(JSON..=) "DialingCapacity" Prelude.<$> dialingCapacity])))
instance Property "BandwidthAllocation" PredictiveDialerConfigProperty where
  type PropertyType "BandwidthAllocation" PredictiveDialerConfigProperty = Value Prelude.Double
  set newValue PredictiveDialerConfigProperty {..}
    = PredictiveDialerConfigProperty
        {bandwidthAllocation = newValue, ..}
instance Property "DialingCapacity" PredictiveDialerConfigProperty where
  type PropertyType "DialingCapacity" PredictiveDialerConfigProperty = Value Prelude.Double
  set newValue PredictiveDialerConfigProperty {..}
    = PredictiveDialerConfigProperty
        {dialingCapacity = Prelude.pure newValue, ..}