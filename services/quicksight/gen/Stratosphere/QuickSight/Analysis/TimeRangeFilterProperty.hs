module Stratosphere.QuickSight.Analysis.TimeRangeFilterProperty (
        module Exports, TimeRangeFilterProperty(..),
        mkTimeRangeFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultFilterControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ExcludePeriodConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TimeRangeFilterValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeRangeFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html>
    TimeRangeFilterProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-column>
                             column :: ColumnIdentifierProperty,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-defaultfiltercontrolconfiguration>
                             defaultFilterControlConfiguration :: (Prelude.Maybe DefaultFilterControlConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-excludeperiodconfiguration>
                             excludePeriodConfiguration :: (Prelude.Maybe ExcludePeriodConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-filterid>
                             filterId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-includemaximum>
                             includeMaximum :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-includeminimum>
                             includeMinimum :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-nulloption>
                             nullOption :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-rangemaximumvalue>
                             rangeMaximumValue :: (Prelude.Maybe TimeRangeFilterValueProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-rangeminimumvalue>
                             rangeMinimumValue :: (Prelude.Maybe TimeRangeFilterValueProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-timerangefilter.html#cfn-quicksight-analysis-timerangefilter-timegranularity>
                             timeGranularity :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeRangeFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> TimeRangeFilterProperty
mkTimeRangeFilterProperty column filterId nullOption
  = TimeRangeFilterProperty
      {haddock_workaround_ = (), column = column, filterId = filterId,
       nullOption = nullOption,
       defaultFilterControlConfiguration = Prelude.Nothing,
       excludePeriodConfiguration = Prelude.Nothing,
       includeMaximum = Prelude.Nothing, includeMinimum = Prelude.Nothing,
       rangeMaximumValue = Prelude.Nothing,
       rangeMinimumValue = Prelude.Nothing,
       timeGranularity = Prelude.Nothing}
instance ToResourceProperties TimeRangeFilterProperty where
  toResourceProperties TimeRangeFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TimeRangeFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FilterId" JSON..= filterId,
                            "NullOption" JSON..= nullOption]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultFilterControlConfiguration"
                                 Prelude.<$> defaultFilterControlConfiguration,
                               (JSON..=) "ExcludePeriodConfiguration"
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
                 [(JSON..=) "DefaultFilterControlConfiguration"
                    Prelude.<$> defaultFilterControlConfiguration,
                  (JSON..=) "ExcludePeriodConfiguration"
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
instance Property "DefaultFilterControlConfiguration" TimeRangeFilterProperty where
  type PropertyType "DefaultFilterControlConfiguration" TimeRangeFilterProperty = DefaultFilterControlConfigurationProperty
  set newValue TimeRangeFilterProperty {..}
    = TimeRangeFilterProperty
        {defaultFilterControlConfiguration = Prelude.pure newValue, ..}
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