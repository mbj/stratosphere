module Stratosphere.QuickSight.Dashboard.TimeRangeFilterProperty (
        module Exports, TimeRangeFilterProperty(..),
        mkTimeRangeFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ExcludePeriodConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TimeRangeFilterValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeRangeFilterProperty
  = TimeRangeFilterProperty {column :: ColumnIdentifierProperty,
                             excludePeriodConfiguration :: (Prelude.Maybe ExcludePeriodConfigurationProperty),
                             filterId :: (Value Prelude.Text),
                             includeMaximum :: (Prelude.Maybe (Value Prelude.Bool)),
                             includeMinimum :: (Prelude.Maybe (Value Prelude.Bool)),
                             nullOption :: (Value Prelude.Text),
                             rangeMaximumValue :: (Prelude.Maybe TimeRangeFilterValueProperty),
                             rangeMinimumValue :: (Prelude.Maybe TimeRangeFilterValueProperty),
                             timeGranularity :: (Prelude.Maybe (Value Prelude.Text))}
mkTimeRangeFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> TimeRangeFilterProperty
mkTimeRangeFilterProperty column filterId nullOption
  = TimeRangeFilterProperty
      {column = column, filterId = filterId, nullOption = nullOption,
       excludePeriodConfiguration = Prelude.Nothing,
       includeMaximum = Prelude.Nothing, includeMinimum = Prelude.Nothing,
       rangeMaximumValue = Prelude.Nothing,
       rangeMinimumValue = Prelude.Nothing,
       timeGranularity = Prelude.Nothing}
instance ToResourceProperties TimeRangeFilterProperty where
  toResourceProperties TimeRangeFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TimeRangeFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FilterId" JSON..= filterId,
                            "NullOption" JSON..= nullOption]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludePeriodConfiguration"
                                 Prelude.<$> excludePeriodConfiguration,
                               (JSON..=) "IncludeMaximum" Prelude.<$> includeMaximum,
                               (JSON..=) "IncludeMinimum" Prelude.<$> includeMinimum,
                               (JSON..=) "RangeMaximumValue" Prelude.<$> rangeMaximumValue,
                               (JSON..=) "RangeMinimumValue" Prelude.<$> rangeMinimumValue,
                               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity]))}
instance JSON.ToJSON TimeRangeFilterProperty where
  toJSON TimeRangeFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FilterId" JSON..= filterId,
               "NullOption" JSON..= nullOption]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludePeriodConfiguration"
                    Prelude.<$> excludePeriodConfiguration,
                  (JSON..=) "IncludeMaximum" Prelude.<$> includeMaximum,
                  (JSON..=) "IncludeMinimum" Prelude.<$> includeMinimum,
                  (JSON..=) "RangeMaximumValue" Prelude.<$> rangeMaximumValue,
                  (JSON..=) "RangeMinimumValue" Prelude.<$> rangeMinimumValue,
                  (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity])))
instance Property "Column" TimeRangeFilterProperty where
  type PropertyType "Column" TimeRangeFilterProperty = ColumnIdentifierProperty
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty {column = newValue, ..}
instance Property "ExcludePeriodConfiguration" TimeRangeFilterProperty where
  type PropertyType "ExcludePeriodConfiguration" TimeRangeFilterProperty = ExcludePeriodConfigurationProperty
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty
        {excludePeriodConfiguration = Prelude.pure newValue, ..}
instance Property "FilterId" TimeRangeFilterProperty where
  type PropertyType "FilterId" TimeRangeFilterProperty = Value Prelude.Text
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty {filterId = newValue, ..}
instance Property "IncludeMaximum" TimeRangeFilterProperty where
  type PropertyType "IncludeMaximum" TimeRangeFilterProperty = Value Prelude.Bool
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty
        {includeMaximum = Prelude.pure newValue, ..}
instance Property "IncludeMinimum" TimeRangeFilterProperty where
  type PropertyType "IncludeMinimum" TimeRangeFilterProperty = Value Prelude.Bool
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty
        {includeMinimum = Prelude.pure newValue, ..}
instance Property "NullOption" TimeRangeFilterProperty where
  type PropertyType "NullOption" TimeRangeFilterProperty = Value Prelude.Text
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty {nullOption = newValue, ..}
instance Property "RangeMaximumValue" TimeRangeFilterProperty where
  type PropertyType "RangeMaximumValue" TimeRangeFilterProperty = TimeRangeFilterValueProperty
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty
        {rangeMaximumValue = Prelude.pure newValue, ..}
instance Property "RangeMinimumValue" TimeRangeFilterProperty where
  type PropertyType "RangeMinimumValue" TimeRangeFilterProperty = TimeRangeFilterValueProperty
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty
        {rangeMinimumValue = Prelude.pure newValue, ..}
instance Property "TimeGranularity" TimeRangeFilterProperty where
  type PropertyType "TimeGranularity" TimeRangeFilterProperty = Value Prelude.Text
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty
        {timeGranularity = Prelude.pure newValue, ..}