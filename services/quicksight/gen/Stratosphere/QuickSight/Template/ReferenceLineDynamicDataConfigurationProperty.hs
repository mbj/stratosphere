module Stratosphere.QuickSight.Template.ReferenceLineDynamicDataConfigurationProperty (
        module Exports, ReferenceLineDynamicDataConfigurationProperty(..),
        mkReferenceLineDynamicDataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AggregationFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumericalAggregationFunctionProperty as Exports
import Stratosphere.ResourceProperties
data ReferenceLineDynamicDataConfigurationProperty
  = ReferenceLineDynamicDataConfigurationProperty {calculation :: NumericalAggregationFunctionProperty,
                                                   column :: ColumnIdentifierProperty,
                                                   measureAggregationFunction :: AggregationFunctionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineDynamicDataConfigurationProperty ::
  NumericalAggregationFunctionProperty
  -> ColumnIdentifierProperty
     -> AggregationFunctionProperty
        -> ReferenceLineDynamicDataConfigurationProperty
mkReferenceLineDynamicDataConfigurationProperty
  calculation
  column
  measureAggregationFunction
  = ReferenceLineDynamicDataConfigurationProperty
      {calculation = calculation, column = column,
       measureAggregationFunction = measureAggregationFunction}
instance ToResourceProperties ReferenceLineDynamicDataConfigurationProperty where
  toResourceProperties
    ReferenceLineDynamicDataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ReferenceLineDynamicDataConfiguration",
         supportsTags = Prelude.False,
         properties = ["Calculation" JSON..= calculation,
                       "Column" JSON..= column,
                       "MeasureAggregationFunction" JSON..= measureAggregationFunction]}
instance JSON.ToJSON ReferenceLineDynamicDataConfigurationProperty where
  toJSON ReferenceLineDynamicDataConfigurationProperty {..}
    = JSON.object
        ["Calculation" JSON..= calculation, "Column" JSON..= column,
         "MeasureAggregationFunction" JSON..= measureAggregationFunction]
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
        {measureAggregationFunction = newValue, ..}