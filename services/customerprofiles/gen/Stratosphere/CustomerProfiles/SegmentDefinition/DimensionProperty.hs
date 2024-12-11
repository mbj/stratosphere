module Stratosphere.CustomerProfiles.SegmentDefinition.DimensionProperty (
        module Exports, DimensionProperty(..), mkDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.CalculatedAttributeDimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.ProfileAttributesProperty as Exports
import Stratosphere.ResourceProperties
data DimensionProperty
  = DimensionProperty {calculatedAttributes :: (Prelude.Maybe (Prelude.Map Prelude.Text CalculatedAttributeDimensionProperty)),
                       profileAttributes :: (Prelude.Maybe ProfileAttributesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionProperty :: DimensionProperty
mkDimensionProperty
  = DimensionProperty
      {calculatedAttributes = Prelude.Nothing,
       profileAttributes = Prelude.Nothing}
instance ToResourceProperties DimensionProperty where
  toResourceProperties DimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.Dimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CalculatedAttributes" Prelude.<$> calculatedAttributes,
                            (JSON..=) "ProfileAttributes" Prelude.<$> profileAttributes])}
instance JSON.ToJSON DimensionProperty where
  toJSON DimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CalculatedAttributes" Prelude.<$> calculatedAttributes,
               (JSON..=) "ProfileAttributes" Prelude.<$> profileAttributes]))
instance Property "CalculatedAttributes" DimensionProperty where
  type PropertyType "CalculatedAttributes" DimensionProperty = Prelude.Map Prelude.Text CalculatedAttributeDimensionProperty
  set newValue DimensionProperty {..}
    = DimensionProperty
        {calculatedAttributes = Prelude.pure newValue, ..}
instance Property "ProfileAttributes" DimensionProperty where
  type PropertyType "ProfileAttributes" DimensionProperty = ProfileAttributesProperty
  set newValue DimensionProperty {..}
    = DimensionProperty {profileAttributes = Prelude.pure newValue, ..}