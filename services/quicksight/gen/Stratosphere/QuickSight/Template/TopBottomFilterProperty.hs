module Stratosphere.QuickSight.Template.TopBottomFilterProperty (
        module Exports, TopBottomFilterProperty(..),
        mkTopBottomFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AggregationSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DefaultFilterControlConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopBottomFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomfilter.html>
    TopBottomFilterProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomfilter.html#cfn-quicksight-template-topbottomfilter-aggregationsortconfigurations>
                             aggregationSortConfigurations :: [AggregationSortConfigurationProperty],
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomfilter.html#cfn-quicksight-template-topbottomfilter-column>
                             column :: ColumnIdentifierProperty,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomfilter.html#cfn-quicksight-template-topbottomfilter-defaultfiltercontrolconfiguration>
                             defaultFilterControlConfiguration :: (Prelude.Maybe DefaultFilterControlConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomfilter.html#cfn-quicksight-template-topbottomfilter-filterid>
                             filterId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomfilter.html#cfn-quicksight-template-topbottomfilter-limit>
                             limit :: (Prelude.Maybe (Value Prelude.Double)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomfilter.html#cfn-quicksight-template-topbottomfilter-parametername>
                             parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomfilter.html#cfn-quicksight-template-topbottomfilter-timegranularity>
                             timeGranularity :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopBottomFilterProperty ::
  [AggregationSortConfigurationProperty]
  -> ColumnIdentifierProperty
     -> Value Prelude.Text -> TopBottomFilterProperty
mkTopBottomFilterProperty
  aggregationSortConfigurations
  column
  filterId
  = TopBottomFilterProperty
      {haddock_workaround_ = (),
       aggregationSortConfigurations = aggregationSortConfigurations,
       column = column, filterId = filterId,
       defaultFilterControlConfiguration = Prelude.Nothing,
       limit = Prelude.Nothing, parameterName = Prelude.Nothing,
       timeGranularity = Prelude.Nothing}
instance ToResourceProperties TopBottomFilterProperty where
  toResourceProperties TopBottomFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TopBottomFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AggregationSortConfigurations"
                              JSON..= aggregationSortConfigurations,
                            "Column" JSON..= column, "FilterId" JSON..= filterId]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultFilterControlConfiguration"
                                 Prelude.<$> defaultFilterControlConfiguration,
                               (JSON..=) "Limit" Prelude.<$> limit,
                               (JSON..=) "ParameterName" Prelude.<$> parameterName,
                               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity]))}
instance JSON.ToJSON TopBottomFilterProperty where
  toJSON TopBottomFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AggregationSortConfigurations"
                 JSON..= aggregationSortConfigurations,
               "Column" JSON..= column, "FilterId" JSON..= filterId]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultFilterControlConfiguration"
                    Prelude.<$> defaultFilterControlConfiguration,
                  (JSON..=) "Limit" Prelude.<$> limit,
                  (JSON..=) "ParameterName" Prelude.<$> parameterName,
                  (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity])))
instance Property "AggregationSortConfigurations" TopBottomFilterProperty where
  type PropertyType "AggregationSortConfigurations" TopBottomFilterProperty = [AggregationSortConfigurationProperty]
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty
        {aggregationSortConfigurations = newValue, ..}
instance Property "Column" TopBottomFilterProperty where
  type PropertyType "Column" TopBottomFilterProperty = ColumnIdentifierProperty
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty {column = newValue, ..}
instance Property "DefaultFilterControlConfiguration" TopBottomFilterProperty where
  type PropertyType "DefaultFilterControlConfiguration" TopBottomFilterProperty = DefaultFilterControlConfigurationProperty
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty
        {defaultFilterControlConfiguration = Prelude.pure newValue, ..}
instance Property "FilterId" TopBottomFilterProperty where
  type PropertyType "FilterId" TopBottomFilterProperty = Value Prelude.Text
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty {filterId = newValue, ..}
instance Property "Limit" TopBottomFilterProperty where
  type PropertyType "Limit" TopBottomFilterProperty = Value Prelude.Double
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty {limit = Prelude.pure newValue, ..}
instance Property "ParameterName" TopBottomFilterProperty where
  type PropertyType "ParameterName" TopBottomFilterProperty = Value Prelude.Text
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "TimeGranularity" TopBottomFilterProperty where
  type PropertyType "TimeGranularity" TopBottomFilterProperty = Value Prelude.Text
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty
        {timeGranularity = Prelude.pure newValue, ..}