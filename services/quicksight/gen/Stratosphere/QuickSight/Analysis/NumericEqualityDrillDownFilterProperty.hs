module Stratosphere.QuickSight.Analysis.NumericEqualityDrillDownFilterProperty (
        module Exports, NumericEqualityDrillDownFilterProperty(..),
        mkNumericEqualityDrillDownFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericEqualityDrillDownFilterProperty
  = NumericEqualityDrillDownFilterProperty {column :: ColumnIdentifierProperty,
                                            value :: (Value Prelude.Double)}
mkNumericEqualityDrillDownFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Double -> NumericEqualityDrillDownFilterProperty
mkNumericEqualityDrillDownFilterProperty column value
  = NumericEqualityDrillDownFilterProperty
      {column = column, value = value}
instance ToResourceProperties NumericEqualityDrillDownFilterProperty where
  toResourceProperties NumericEqualityDrillDownFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.NumericEqualityDrillDownFilter",
         supportsTags = Prelude.False,
         properties = ["Column" JSON..= column, "Value" JSON..= value]}
instance JSON.ToJSON NumericEqualityDrillDownFilterProperty where
  toJSON NumericEqualityDrillDownFilterProperty {..}
    = JSON.object ["Column" JSON..= column, "Value" JSON..= value]
instance Property "Column" NumericEqualityDrillDownFilterProperty where
  type PropertyType "Column" NumericEqualityDrillDownFilterProperty = ColumnIdentifierProperty
  set newValue NumericEqualityDrillDownFilterProperty {..}
    = NumericEqualityDrillDownFilterProperty {column = newValue, ..}
instance Property "Value" NumericEqualityDrillDownFilterProperty where
  type PropertyType "Value" NumericEqualityDrillDownFilterProperty = Value Prelude.Double
  set newValue NumericEqualityDrillDownFilterProperty {..}
    = NumericEqualityDrillDownFilterProperty {value = newValue, ..}