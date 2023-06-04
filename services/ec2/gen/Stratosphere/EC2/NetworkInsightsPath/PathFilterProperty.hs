module Stratosphere.EC2.NetworkInsightsPath.PathFilterProperty (
        module Exports, PathFilterProperty(..), mkPathFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsPath.FilterPortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PathFilterProperty
  = PathFilterProperty {destinationAddress :: (Prelude.Maybe (Value Prelude.Text)),
                        destinationPortRange :: (Prelude.Maybe FilterPortRangeProperty),
                        sourceAddress :: (Prelude.Maybe (Value Prelude.Text)),
                        sourcePortRange :: (Prelude.Maybe FilterPortRangeProperty)}
mkPathFilterProperty :: PathFilterProperty
mkPathFilterProperty
  = PathFilterProperty
      {destinationAddress = Prelude.Nothing,
       destinationPortRange = Prelude.Nothing,
       sourceAddress = Prelude.Nothing, sourcePortRange = Prelude.Nothing}
instance ToResourceProperties PathFilterProperty where
  toResourceProperties PathFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsPath.PathFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationAddress" Prelude.<$> destinationAddress,
                            (JSON..=) "DestinationPortRange" Prelude.<$> destinationPortRange,
                            (JSON..=) "SourceAddress" Prelude.<$> sourceAddress,
                            (JSON..=) "SourcePortRange" Prelude.<$> sourcePortRange])}
instance JSON.ToJSON PathFilterProperty where
  toJSON PathFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationAddress" Prelude.<$> destinationAddress,
               (JSON..=) "DestinationPortRange" Prelude.<$> destinationPortRange,
               (JSON..=) "SourceAddress" Prelude.<$> sourceAddress,
               (JSON..=) "SourcePortRange" Prelude.<$> sourcePortRange]))
instance Property "DestinationAddress" PathFilterProperty where
  type PropertyType "DestinationAddress" PathFilterProperty = Value Prelude.Text
  set newValue PathFilterProperty {..}
    = PathFilterProperty
        {destinationAddress = Prelude.pure newValue, ..}
instance Property "DestinationPortRange" PathFilterProperty where
  type PropertyType "DestinationPortRange" PathFilterProperty = FilterPortRangeProperty
  set newValue PathFilterProperty {..}
    = PathFilterProperty
        {destinationPortRange = Prelude.pure newValue, ..}
instance Property "SourceAddress" PathFilterProperty where
  type PropertyType "SourceAddress" PathFilterProperty = Value Prelude.Text
  set newValue PathFilterProperty {..}
    = PathFilterProperty {sourceAddress = Prelude.pure newValue, ..}
instance Property "SourcePortRange" PathFilterProperty where
  type PropertyType "SourcePortRange" PathFilterProperty = FilterPortRangeProperty
  set newValue PathFilterProperty {..}
    = PathFilterProperty {sourcePortRange = Prelude.pure newValue, ..}