module Stratosphere.QuickSight.Analysis.AggregationFunctionProperty (
        module Exports, AggregationFunctionProperty(..),
        mkAggregationFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericalAggregationFunctionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregationFunctionProperty
  = AggregationFunctionProperty {categoricalAggregationFunction :: (Prelude.Maybe (Value Prelude.Text)),
                                 dateAggregationFunction :: (Prelude.Maybe (Value Prelude.Text)),
                                 numericalAggregationFunction :: (Prelude.Maybe NumericalAggregationFunctionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregationFunctionProperty :: AggregationFunctionProperty
mkAggregationFunctionProperty
  = AggregationFunctionProperty
      {categoricalAggregationFunction = Prelude.Nothing,
       dateAggregationFunction = Prelude.Nothing,
       numericalAggregationFunction = Prelude.Nothing}
instance ToResourceProperties AggregationFunctionProperty where
  toResourceProperties AggregationFunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AggregationFunction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoricalAggregationFunction"
                              Prelude.<$> categoricalAggregationFunction,
                            (JSON..=) "DateAggregationFunction"
                              Prelude.<$> dateAggregationFunction,
                            (JSON..=) "NumericalAggregationFunction"
                              Prelude.<$> numericalAggregationFunction])}
instance JSON.ToJSON AggregationFunctionProperty where
  toJSON AggregationFunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoricalAggregationFunction"
                 Prelude.<$> categoricalAggregationFunction,
               (JSON..=) "DateAggregationFunction"
                 Prelude.<$> dateAggregationFunction,
               (JSON..=) "NumericalAggregationFunction"
                 Prelude.<$> numericalAggregationFunction]))
instance Property "CategoricalAggregationFunction" AggregationFunctionProperty where
  type PropertyType "CategoricalAggregationFunction" AggregationFunctionProperty = Value Prelude.Text
  set newValue AggregationFunctionProperty {..}
    = AggregationFunctionProperty
        {categoricalAggregationFunction = Prelude.pure newValue, ..}
instance Property "DateAggregationFunction" AggregationFunctionProperty where
  type PropertyType "DateAggregationFunction" AggregationFunctionProperty = Value Prelude.Text
  set newValue AggregationFunctionProperty {..}
    = AggregationFunctionProperty
        {dateAggregationFunction = Prelude.pure newValue, ..}
instance Property "NumericalAggregationFunction" AggregationFunctionProperty where
  type PropertyType "NumericalAggregationFunction" AggregationFunctionProperty = NumericalAggregationFunctionProperty
  set newValue AggregationFunctionProperty {..}
    = AggregationFunctionProperty
        {numericalAggregationFunction = Prelude.pure newValue, ..}