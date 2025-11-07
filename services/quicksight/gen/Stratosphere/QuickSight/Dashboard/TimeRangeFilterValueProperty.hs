module Stratosphere.QuickSight.Dashboard.TimeRangeFilterValueProperty (
        module Exports, TimeRangeFilterValueProperty(..),
        mkTimeRangeFilterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.RollingDateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeRangeFilterValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timerangefiltervalue.html>
    TimeRangeFilterValueProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timerangefiltervalue.html#cfn-quicksight-dashboard-timerangefiltervalue-parameter>
                                  parameter :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timerangefiltervalue.html#cfn-quicksight-dashboard-timerangefiltervalue-rollingdate>
                                  rollingDate :: (Prelude.Maybe RollingDateConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timerangefiltervalue.html#cfn-quicksight-dashboard-timerangefiltervalue-staticvalue>
                                  staticValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeRangeFilterValueProperty :: TimeRangeFilterValueProperty
mkTimeRangeFilterValueProperty
  = TimeRangeFilterValueProperty
      {haddock_workaround_ = (), parameter = Prelude.Nothing,
       rollingDate = Prelude.Nothing, staticValue = Prelude.Nothing}
instance ToResourceProperties TimeRangeFilterValueProperty where
  toResourceProperties TimeRangeFilterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TimeRangeFilterValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Parameter" Prelude.<$> parameter,
                            (JSON..=) "RollingDate" Prelude.<$> rollingDate,
                            (JSON..=) "StaticValue" Prelude.<$> staticValue])}
instance JSON.ToJSON TimeRangeFilterValueProperty where
  toJSON TimeRangeFilterValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Parameter" Prelude.<$> parameter,
               (JSON..=) "RollingDate" Prelude.<$> rollingDate,
               (JSON..=) "StaticValue" Prelude.<$> staticValue]))
instance Property "Parameter" TimeRangeFilterValueProperty where
  type PropertyType "Parameter" TimeRangeFilterValueProperty = Value Prelude.Text
  set newValue TimeRangeFilterValueProperty {..}
    = TimeRangeFilterValueProperty
        {parameter = Prelude.pure newValue, ..}
instance Property "RollingDate" TimeRangeFilterValueProperty where
  type PropertyType "RollingDate" TimeRangeFilterValueProperty = RollingDateConfigurationProperty
  set newValue TimeRangeFilterValueProperty {..}
    = TimeRangeFilterValueProperty
        {rollingDate = Prelude.pure newValue, ..}
instance Property "StaticValue" TimeRangeFilterValueProperty where
  type PropertyType "StaticValue" TimeRangeFilterValueProperty = Value Prelude.Text
  set newValue TimeRangeFilterValueProperty {..}
    = TimeRangeFilterValueProperty
        {staticValue = Prelude.pure newValue, ..}