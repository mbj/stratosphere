module Stratosphere.CustomerProfiles.SegmentDefinition.AddressDimensionProperty (
        module Exports, AddressDimensionProperty(..),
        mkAddressDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.ProfileDimensionProperty as Exports
import Stratosphere.ResourceProperties
data AddressDimensionProperty
  = AddressDimensionProperty {city :: (Prelude.Maybe ProfileDimensionProperty),
                              country :: (Prelude.Maybe ProfileDimensionProperty),
                              county :: (Prelude.Maybe ProfileDimensionProperty),
                              postalCode :: (Prelude.Maybe ProfileDimensionProperty),
                              province :: (Prelude.Maybe ProfileDimensionProperty),
                              state :: (Prelude.Maybe ProfileDimensionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddressDimensionProperty :: AddressDimensionProperty
mkAddressDimensionProperty
  = AddressDimensionProperty
      {city = Prelude.Nothing, country = Prelude.Nothing,
       county = Prelude.Nothing, postalCode = Prelude.Nothing,
       province = Prelude.Nothing, state = Prelude.Nothing}
instance ToResourceProperties AddressDimensionProperty where
  toResourceProperties AddressDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.AddressDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "City" Prelude.<$> city,
                            (JSON..=) "Country" Prelude.<$> country,
                            (JSON..=) "County" Prelude.<$> county,
                            (JSON..=) "PostalCode" Prelude.<$> postalCode,
                            (JSON..=) "Province" Prelude.<$> province,
                            (JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON AddressDimensionProperty where
  toJSON AddressDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "City" Prelude.<$> city,
               (JSON..=) "Country" Prelude.<$> country,
               (JSON..=) "County" Prelude.<$> county,
               (JSON..=) "PostalCode" Prelude.<$> postalCode,
               (JSON..=) "Province" Prelude.<$> province,
               (JSON..=) "State" Prelude.<$> state]))
instance Property "City" AddressDimensionProperty where
  type PropertyType "City" AddressDimensionProperty = ProfileDimensionProperty
  set newValue AddressDimensionProperty {..}
    = AddressDimensionProperty {city = Prelude.pure newValue, ..}
instance Property "Country" AddressDimensionProperty where
  type PropertyType "Country" AddressDimensionProperty = ProfileDimensionProperty
  set newValue AddressDimensionProperty {..}
    = AddressDimensionProperty {country = Prelude.pure newValue, ..}
instance Property "County" AddressDimensionProperty where
  type PropertyType "County" AddressDimensionProperty = ProfileDimensionProperty
  set newValue AddressDimensionProperty {..}
    = AddressDimensionProperty {county = Prelude.pure newValue, ..}
instance Property "PostalCode" AddressDimensionProperty where
  type PropertyType "PostalCode" AddressDimensionProperty = ProfileDimensionProperty
  set newValue AddressDimensionProperty {..}
    = AddressDimensionProperty {postalCode = Prelude.pure newValue, ..}
instance Property "Province" AddressDimensionProperty where
  type PropertyType "Province" AddressDimensionProperty = ProfileDimensionProperty
  set newValue AddressDimensionProperty {..}
    = AddressDimensionProperty {province = Prelude.pure newValue, ..}
instance Property "State" AddressDimensionProperty where
  type PropertyType "State" AddressDimensionProperty = ProfileDimensionProperty
  set newValue AddressDimensionProperty {..}
    = AddressDimensionProperty {state = Prelude.pure newValue, ..}