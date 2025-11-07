module Stratosphere.QuickSight.Dashboard.TimeEqualityFilterProperty (
        module Exports, TimeEqualityFilterProperty(..),
        mkTimeEqualityFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DefaultFilterControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.RollingDateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeEqualityFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timeequalityfilter.html>
    TimeEqualityFilterProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timeequalityfilter.html#cfn-quicksight-dashboard-timeequalityfilter-column>
                                column :: ColumnIdentifierProperty,
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timeequalityfilter.html#cfn-quicksight-dashboard-timeequalityfilter-defaultfiltercontrolconfiguration>
                                defaultFilterControlConfiguration :: (Prelude.Maybe DefaultFilterControlConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timeequalityfilter.html#cfn-quicksight-dashboard-timeequalityfilter-filterid>
                                filterId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timeequalityfilter.html#cfn-quicksight-dashboard-timeequalityfilter-parametername>
                                parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timeequalityfilter.html#cfn-quicksight-dashboard-timeequalityfilter-rollingdate>
                                rollingDate :: (Prelude.Maybe RollingDateConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timeequalityfilter.html#cfn-quicksight-dashboard-timeequalityfilter-timegranularity>
                                timeGranularity :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-timeequalityfilter.html#cfn-quicksight-dashboard-timeequalityfilter-value>
                                value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeEqualityFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> TimeEqualityFilterProperty
mkTimeEqualityFilterProperty column filterId
  = TimeEqualityFilterProperty
      {haddock_workaround_ = (), column = column, filterId = filterId,
       defaultFilterControlConfiguration = Prelude.Nothing,
       parameterName = Prelude.Nothing, rollingDate = Prelude.Nothing,
       timeGranularity = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties TimeEqualityFilterProperty where
  toResourceProperties TimeEqualityFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TimeEqualityFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FilterId" JSON..= filterId]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultFilterControlConfiguration"
                                 Prelude.<$> defaultFilterControlConfiguration,
                               (JSON..=) "ParameterName" Prelude.<$> parameterName,
                               (JSON..=) "RollingDate" Prelude.<$> rollingDate,
                               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TimeEqualityFilterProperty where
  toJSON TimeEqualityFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FilterId" JSON..= filterId]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultFilterControlConfiguration"
                    Prelude.<$> defaultFilterControlConfiguration,
                  (JSON..=) "ParameterName" Prelude.<$> parameterName,
                  (JSON..=) "RollingDate" Prelude.<$> rollingDate,
                  (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Column" TimeEqualityFilterProperty where
  type PropertyType "Column" TimeEqualityFilterProperty = ColumnIdentifierProperty
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty {column = newValue, ..}
instance Property "DefaultFilterControlConfiguration" TimeEqualityFilterProperty where
  type PropertyType "DefaultFilterControlConfiguration" TimeEqualityFilterProperty = DefaultFilterControlConfigurationProperty
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty
        {defaultFilterControlConfiguration = Prelude.pure newValue, ..}
instance Property "FilterId" TimeEqualityFilterProperty where
  type PropertyType "FilterId" TimeEqualityFilterProperty = Value Prelude.Text
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty {filterId = newValue, ..}
instance Property "ParameterName" TimeEqualityFilterProperty where
  type PropertyType "ParameterName" TimeEqualityFilterProperty = Value Prelude.Text
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "RollingDate" TimeEqualityFilterProperty where
  type PropertyType "RollingDate" TimeEqualityFilterProperty = RollingDateConfigurationProperty
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty
        {rollingDate = Prelude.pure newValue, ..}
instance Property "TimeGranularity" TimeEqualityFilterProperty where
  type PropertyType "TimeGranularity" TimeEqualityFilterProperty = Value Prelude.Text
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty
        {timeGranularity = Prelude.pure newValue, ..}
instance Property "Value" TimeEqualityFilterProperty where
  type PropertyType "Value" TimeEqualityFilterProperty = Value Prelude.Text
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty {value = Prelude.pure newValue, ..}