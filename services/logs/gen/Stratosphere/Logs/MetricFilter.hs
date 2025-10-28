module Stratosphere.Logs.MetricFilter (
        module Exports, MetricFilter(..), mkMetricFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.MetricFilter.MetricTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricFilter
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html>
    MetricFilter {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-logs-metricfilter-filtername>
                  filterName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-logs-metricfilter-filterpattern>
                  filterPattern :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-logs-metricfilter-loggroupname>
                  logGroupName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-logs-metricfilter-metrictransformations>
                  metricTransformations :: [MetricTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricFilter ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> [MetricTransformationProperty] -> MetricFilter
mkMetricFilter filterPattern logGroupName metricTransformations
  = MetricFilter
      {haddock_workaround_ = (), filterPattern = filterPattern,
       logGroupName = logGroupName,
       metricTransformations = metricTransformations,
       filterName = Prelude.Nothing}
instance ToResourceProperties MetricFilter where
  toResourceProperties MetricFilter {..}
    = ResourceProperties
        {awsType = "AWS::Logs::MetricFilter", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterPattern" JSON..= filterPattern,
                            "LogGroupName" JSON..= logGroupName,
                            "MetricTransformations" JSON..= metricTransformations]
                           (Prelude.catMaybes
                              [(JSON..=) "FilterName" Prelude.<$> filterName]))}
instance JSON.ToJSON MetricFilter where
  toJSON MetricFilter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterPattern" JSON..= filterPattern,
               "LogGroupName" JSON..= logGroupName,
               "MetricTransformations" JSON..= metricTransformations]
              (Prelude.catMaybes
                 [(JSON..=) "FilterName" Prelude.<$> filterName])))
instance Property "FilterName" MetricFilter where
  type PropertyType "FilterName" MetricFilter = Value Prelude.Text
  set newValue MetricFilter {..}
    = MetricFilter {filterName = Prelude.pure newValue, ..}
instance Property "FilterPattern" MetricFilter where
  type PropertyType "FilterPattern" MetricFilter = Value Prelude.Text
  set newValue MetricFilter {..}
    = MetricFilter {filterPattern = newValue, ..}
instance Property "LogGroupName" MetricFilter where
  type PropertyType "LogGroupName" MetricFilter = Value Prelude.Text
  set newValue MetricFilter {..}
    = MetricFilter {logGroupName = newValue, ..}
instance Property "MetricTransformations" MetricFilter where
  type PropertyType "MetricTransformations" MetricFilter = [MetricTransformationProperty]
  set newValue MetricFilter {..}
    = MetricFilter {metricTransformations = newValue, ..}