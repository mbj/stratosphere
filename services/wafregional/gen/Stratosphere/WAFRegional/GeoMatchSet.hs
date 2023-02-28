module Stratosphere.WAFRegional.GeoMatchSet (
        module Exports, GeoMatchSet(..), mkGeoMatchSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.GeoMatchSet.GeoMatchConstraintProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoMatchSet
  = GeoMatchSet {geoMatchConstraints :: (Prelude.Maybe [GeoMatchConstraintProperty]),
                 name :: (Value Prelude.Text)}
mkGeoMatchSet :: Value Prelude.Text -> GeoMatchSet
mkGeoMatchSet name
  = GeoMatchSet {name = name, geoMatchConstraints = Prelude.Nothing}
instance ToResourceProperties GeoMatchSet where
  toResourceProperties GeoMatchSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::GeoMatchSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "GeoMatchConstraints"
                                 Prelude.<$> geoMatchConstraints]))}
instance JSON.ToJSON GeoMatchSet where
  toJSON GeoMatchSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "GeoMatchConstraints"
                    Prelude.<$> geoMatchConstraints])))
instance Property "GeoMatchConstraints" GeoMatchSet where
  type PropertyType "GeoMatchConstraints" GeoMatchSet = [GeoMatchConstraintProperty]
  set newValue GeoMatchSet {..}
    = GeoMatchSet {geoMatchConstraints = Prelude.pure newValue, ..}
instance Property "Name" GeoMatchSet where
  type PropertyType "Name" GeoMatchSet = Value Prelude.Text
  set newValue GeoMatchSet {..} = GeoMatchSet {name = newValue, ..}