module Stratosphere.QuickSight.Dashboard.ReferenceLineDynamicDataConfigurationProperty (
        module Exports, ReferenceLineDynamicDataConfigurationProperty(..),
        mkReferenceLineDynamicDataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NumericalAggregationFunctionProperty as Exports
import Stratosphere.ResourceProperties
data ReferenceLineDynamicDataConfigurationProperty
  = ReferenceLineDynamicDataConfigurationProperty {calculation :: NumericalAggregationFunctionProperty,
                                                   column :: ColumnIdentifierProperty,
                                                   measureAggregationFunction :: (Prelude.Maybe AggregationFunctionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineDynamicDataConfigurationProperty ::
  NumericalAggregationFunctionProperty
  -> ColumnIdentifierProperty
     -> ReferenceLineDynamicDataConfigurationProperty
mkReferenceLineDynamicDataConfigurationProperty calculation column
  = ReferenceLineDynamicDataConfigurationProperty
      {calculation = calculation, column = column,
       measureAggregationFunction = Prelude.Nothing}
instance ToResourceProperties ReferenceLineDynamicDataConfigurationProperty where
  toResourceProperties
    ReferenceLineDynamicDataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ReferenceLineDynamicDataConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Calculation" JSON..= calculation, "Column" JSON..= column]
                           (Prelude.catMaybes
                              [(JSON..=) "MeasureAggregationFunction"
                                 Prelude.<$> measureAggregationFunction]))}
instance JSON.ToJSON ReferenceLineDynamicDataConfigurationProperty where
  toJSON ReferenceLineDynamicDataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Calculation" JSON..= calculation, "Column" JSON..= column]
              (Prelude.catMaybes
                 [(JSON..=) "MeasureAggregationFunction"
                    Prelude.<$> measureAggregationFunction])))
instance Property "Calculation" ReferenceLineDynamicDataConfigurationProperty where
  type PropertyType "Calculation" ReferenceLineDynamicDataConfigurationProperty = NumericalAggregationFunctionProperty
  set newValue ReferenceLineDynamicDataConfigurationProperty {..}
    = ReferenceLineDynamicDataConfigurationProperty
        {calculation = newValue, ..}
instance Property "Column" ReferenceLineDynamicDataConfigurationProperty where
  type PropertyType "Column" ReferenceLineDynamicDataConfigurationProperty = ColumnIdentifierProperty
  set newValue ReferenceLineDynamicDataConfigurationProperty {..}
    = ReferenceLineDynamicDataConfigurationProperty
        {column = newValue, ..}
instance Property "MeasureAggregationFunction" ReferenceLineDynamicDataConfigurationProperty where
  type PropertyType "MeasureAggregationFunction" ReferenceLineDynamicDataConfigurationProperty = AggregationFunctionProperty
  set newValue ReferenceLineDynamicDataConfigurationProperty {..}
    = ReferenceLineDynamicDataConfigurationProperty
        {measureAggregationFunction = Prelude.pure newValue, ..}