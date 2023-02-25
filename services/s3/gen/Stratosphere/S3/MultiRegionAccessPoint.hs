module Stratosphere.S3.MultiRegionAccessPoint (
        module Exports, MultiRegionAccessPoint(..),
        mkMultiRegionAccessPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.MultiRegionAccessPoint.PublicAccessBlockConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.MultiRegionAccessPoint.RegionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiRegionAccessPoint
  = MultiRegionAccessPoint {name :: (Prelude.Maybe (Value Prelude.Text)),
                            publicAccessBlockConfiguration :: (Prelude.Maybe PublicAccessBlockConfigurationProperty),
                            regions :: [RegionProperty]}
mkMultiRegionAccessPoint ::
  [RegionProperty] -> MultiRegionAccessPoint
mkMultiRegionAccessPoint regions
  = MultiRegionAccessPoint
      {regions = regions, name = Prelude.Nothing,
       publicAccessBlockConfiguration = Prelude.Nothing}
instance ToResourceProperties MultiRegionAccessPoint where
  toResourceProperties MultiRegionAccessPoint {..}
    = ResourceProperties
        {awsType = "AWS::S3::MultiRegionAccessPoint",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Regions" JSON..= regions]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PublicAccessBlockConfiguration"
                                 Prelude.<$> publicAccessBlockConfiguration]))}
instance JSON.ToJSON MultiRegionAccessPoint where
  toJSON MultiRegionAccessPoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Regions" JSON..= regions]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PublicAccessBlockConfiguration"
                    Prelude.<$> publicAccessBlockConfiguration])))
instance Property "Name" MultiRegionAccessPoint where
  type PropertyType "Name" MultiRegionAccessPoint = Value Prelude.Text
  set newValue MultiRegionAccessPoint {..}
    = MultiRegionAccessPoint {name = Prelude.pure newValue, ..}
instance Property "PublicAccessBlockConfiguration" MultiRegionAccessPoint where
  type PropertyType "PublicAccessBlockConfiguration" MultiRegionAccessPoint = PublicAccessBlockConfigurationProperty
  set newValue MultiRegionAccessPoint {..}
    = MultiRegionAccessPoint
        {publicAccessBlockConfiguration = Prelude.pure newValue, ..}
instance Property "Regions" MultiRegionAccessPoint where
  type PropertyType "Regions" MultiRegionAccessPoint = [RegionProperty]
  set newValue MultiRegionAccessPoint {..}
    = MultiRegionAccessPoint {regions = newValue, ..}