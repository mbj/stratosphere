module Stratosphere.QuickSight.Analysis.DimensionFieldProperty (
        module Exports, DimensionFieldProperty(..),
        mkDimensionFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CategoricalDimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DateDimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericalDimensionFieldProperty as Exports
import Stratosphere.ResourceProperties
data DimensionFieldProperty
  = DimensionFieldProperty {categoricalDimensionField :: (Prelude.Maybe CategoricalDimensionFieldProperty),
                            dateDimensionField :: (Prelude.Maybe DateDimensionFieldProperty),
                            numericalDimensionField :: (Prelude.Maybe NumericalDimensionFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionFieldProperty :: DimensionFieldProperty
mkDimensionFieldProperty
  = DimensionFieldProperty
      {categoricalDimensionField = Prelude.Nothing,
       dateDimensionField = Prelude.Nothing,
       numericalDimensionField = Prelude.Nothing}
instance ToResourceProperties DimensionFieldProperty where
  toResourceProperties DimensionFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DimensionField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoricalDimensionField"
                              Prelude.<$> categoricalDimensionField,
                            (JSON..=) "DateDimensionField" Prelude.<$> dateDimensionField,
                            (JSON..=) "NumericalDimensionField"
                              Prelude.<$> numericalDimensionField])}
instance JSON.ToJSON DimensionFieldProperty where
  toJSON DimensionFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoricalDimensionField"
                 Prelude.<$> categoricalDimensionField,
               (JSON..=) "DateDimensionField" Prelude.<$> dateDimensionField,
               (JSON..=) "NumericalDimensionField"
                 Prelude.<$> numericalDimensionField]))
instance Property "CategoricalDimensionField" DimensionFieldProperty where
  type PropertyType "CategoricalDimensionField" DimensionFieldProperty = CategoricalDimensionFieldProperty
  set newValue DimensionFieldProperty {..}
    = DimensionFieldProperty
        {categoricalDimensionField = Prelude.pure newValue, ..}
instance Property "DateDimensionField" DimensionFieldProperty where
  type PropertyType "DateDimensionField" DimensionFieldProperty = DateDimensionFieldProperty
  set newValue DimensionFieldProperty {..}
    = DimensionFieldProperty
        {dateDimensionField = Prelude.pure newValue, ..}
instance Property "NumericalDimensionField" DimensionFieldProperty where
  type PropertyType "NumericalDimensionField" DimensionFieldProperty = NumericalDimensionFieldProperty
  set newValue DimensionFieldProperty {..}
    = DimensionFieldProperty
        {numericalDimensionField = Prelude.pure newValue, ..}