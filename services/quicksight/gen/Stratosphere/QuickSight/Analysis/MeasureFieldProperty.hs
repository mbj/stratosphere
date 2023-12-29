module Stratosphere.QuickSight.Analysis.MeasureFieldProperty (
        module Exports, MeasureFieldProperty(..), mkMeasureFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CalculatedMeasureFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CategoricalMeasureFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DateMeasureFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericalMeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data MeasureFieldProperty
  = MeasureFieldProperty {calculatedMeasureField :: (Prelude.Maybe CalculatedMeasureFieldProperty),
                          categoricalMeasureField :: (Prelude.Maybe CategoricalMeasureFieldProperty),
                          dateMeasureField :: (Prelude.Maybe DateMeasureFieldProperty),
                          numericalMeasureField :: (Prelude.Maybe NumericalMeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMeasureFieldProperty :: MeasureFieldProperty
mkMeasureFieldProperty
  = MeasureFieldProperty
      {calculatedMeasureField = Prelude.Nothing,
       categoricalMeasureField = Prelude.Nothing,
       dateMeasureField = Prelude.Nothing,
       numericalMeasureField = Prelude.Nothing}
instance ToResourceProperties MeasureFieldProperty where
  toResourceProperties MeasureFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.MeasureField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CalculatedMeasureField"
                              Prelude.<$> calculatedMeasureField,
                            (JSON..=) "CategoricalMeasureField"
                              Prelude.<$> categoricalMeasureField,
                            (JSON..=) "DateMeasureField" Prelude.<$> dateMeasureField,
                            (JSON..=) "NumericalMeasureField"
                              Prelude.<$> numericalMeasureField])}
instance JSON.ToJSON MeasureFieldProperty where
  toJSON MeasureFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CalculatedMeasureField"
                 Prelude.<$> calculatedMeasureField,
               (JSON..=) "CategoricalMeasureField"
                 Prelude.<$> categoricalMeasureField,
               (JSON..=) "DateMeasureField" Prelude.<$> dateMeasureField,
               (JSON..=) "NumericalMeasureField"
                 Prelude.<$> numericalMeasureField]))
instance Property "CalculatedMeasureField" MeasureFieldProperty where
  type PropertyType "CalculatedMeasureField" MeasureFieldProperty = CalculatedMeasureFieldProperty
  set newValue MeasureFieldProperty {..}
    = MeasureFieldProperty
        {calculatedMeasureField = Prelude.pure newValue, ..}
instance Property "CategoricalMeasureField" MeasureFieldProperty where
  type PropertyType "CategoricalMeasureField" MeasureFieldProperty = CategoricalMeasureFieldProperty
  set newValue MeasureFieldProperty {..}
    = MeasureFieldProperty
        {categoricalMeasureField = Prelude.pure newValue, ..}
instance Property "DateMeasureField" MeasureFieldProperty where
  type PropertyType "DateMeasureField" MeasureFieldProperty = DateMeasureFieldProperty
  set newValue MeasureFieldProperty {..}
    = MeasureFieldProperty
        {dateMeasureField = Prelude.pure newValue, ..}
instance Property "NumericalMeasureField" MeasureFieldProperty where
  type PropertyType "NumericalMeasureField" MeasureFieldProperty = NumericalMeasureFieldProperty
  set newValue MeasureFieldProperty {..}
    = MeasureFieldProperty
        {numericalMeasureField = Prelude.pure newValue, ..}