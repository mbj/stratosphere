module Stratosphere.AutoScaling.AutoScalingGroup.NetworkBandwidthGbpsRequestProperty (
        NetworkBandwidthGbpsRequestProperty(..),
        mkNetworkBandwidthGbpsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkBandwidthGbpsRequestProperty
  = NetworkBandwidthGbpsRequestProperty {max :: (Prelude.Maybe (Value Prelude.Double)),
                                         min :: (Prelude.Maybe (Value Prelude.Double))}
mkNetworkBandwidthGbpsRequestProperty ::
  NetworkBandwidthGbpsRequestProperty
mkNetworkBandwidthGbpsRequestProperty
  = NetworkBandwidthGbpsRequestProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties NetworkBandwidthGbpsRequestProperty where
  toResourceProperties NetworkBandwidthGbpsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.NetworkBandwidthGbpsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON NetworkBandwidthGbpsRequestProperty where
  toJSON NetworkBandwidthGbpsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" NetworkBandwidthGbpsRequestProperty where
  type PropertyType "Max" NetworkBandwidthGbpsRequestProperty = Value Prelude.Double
  set newValue NetworkBandwidthGbpsRequestProperty {..}
    = NetworkBandwidthGbpsRequestProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" NetworkBandwidthGbpsRequestProperty where
  type PropertyType "Min" NetworkBandwidthGbpsRequestProperty = Value Prelude.Double
  set newValue NetworkBandwidthGbpsRequestProperty {..}
    = NetworkBandwidthGbpsRequestProperty
        {min = Prelude.pure newValue, ..}