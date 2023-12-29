module Stratosphere.QuickSight.Analysis.TimeRangeDrillDownFilterProperty (
        module Exports, TimeRangeDrillDownFilterProperty(..),
        mkTimeRangeDrillDownFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeRangeDrillDownFilterProperty
  = TimeRangeDrillDownFilterProperty {column :: ColumnIdentifierProperty,
                                      rangeMaximum :: (Value Prelude.Text),
                                      rangeMinimum :: (Value Prelude.Text),
                                      timeGranularity :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeRangeDrillDownFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> TimeRangeDrillDownFilterProperty
mkTimeRangeDrillDownFilterProperty
  column
  rangeMaximum
  rangeMinimum
  timeGranularity
  = TimeRangeDrillDownFilterProperty
      {column = column, rangeMaximum = rangeMaximum,
       rangeMinimum = rangeMinimum, timeGranularity = timeGranularity}
instance ToResourceProperties TimeRangeDrillDownFilterProperty where
  toResourceProperties TimeRangeDrillDownFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TimeRangeDrillDownFilter",
         supportsTags = Prelude.False,
         properties = ["Column" JSON..= column,
                       "RangeMaximum" JSON..= rangeMaximum,
                       "RangeMinimum" JSON..= rangeMinimum,
                       "TimeGranularity" JSON..= timeGranularity]}
instance JSON.ToJSON TimeRangeDrillDownFilterProperty where
  toJSON TimeRangeDrillDownFilterProperty {..}
    = JSON.object
        ["Column" JSON..= column, "RangeMaximum" JSON..= rangeMaximum,
         "RangeMinimum" JSON..= rangeMinimum,
         "TimeGranularity" JSON..= timeGranularity]
instance Property "Column" TimeRangeDrillDownFilterProperty where
  type PropertyType "Column" TimeRangeDrillDownFilterProperty = ColumnIdentifierProperty
  set newValue TimeRangeDrillDownFilterProperty {..}
    = TimeRangeDrillDownFilterProperty {column = newValue, ..}
instance Property "RangeMaximum" TimeRangeDrillDownFilterProperty where
  type PropertyType "RangeMaximum" TimeRangeDrillDownFilterProperty = Value Prelude.Text
  set newValue TimeRangeDrillDownFilterProperty {..}
    = TimeRangeDrillDownFilterProperty {rangeMaximum = newValue, ..}
instance Property "RangeMinimum" TimeRangeDrillDownFilterProperty where
  type PropertyType "RangeMinimum" TimeRangeDrillDownFilterProperty = Value Prelude.Text
  set newValue TimeRangeDrillDownFilterProperty {..}
    = TimeRangeDrillDownFilterProperty {rangeMinimum = newValue, ..}
instance Property "TimeGranularity" TimeRangeDrillDownFilterProperty where
  type PropertyType "TimeGranularity" TimeRangeDrillDownFilterProperty = Value Prelude.Text
  set newValue TimeRangeDrillDownFilterProperty {..}
    = TimeRangeDrillDownFilterProperty {timeGranularity = newValue, ..}