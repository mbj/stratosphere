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
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-logs-metricfilter-applyontransformedlogs>
                  applyOnTransformedLogs :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-logs-metricfilter-emitsystemfielddimensions>
                  emitSystemFieldDimensions :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-logs-metricfilter-fieldselectioncriteria>
                  fieldSelectionCriteria :: (Prelude.Maybe (Value Prelude.Text)),
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
       applyOnTransformedLogs = Prelude.Nothing,
       emitSystemFieldDimensions = Prelude.Nothing,
       fieldSelectionCriteria = Prelude.Nothing,
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
                              [(JSON..=) "ApplyOnTransformedLogs"
                                 Prelude.<$> applyOnTransformedLogs,
                               (JSON..=) "EmitSystemFieldDimensions"
                                 Prelude.<$> emitSystemFieldDimensions,
                               (JSON..=) "FieldSelectionCriteria"
                                 Prelude.<$> fieldSelectionCriteria,
                               (JSON..=) "FilterName" Prelude.<$> filterName]))}
instance JSON.ToJSON MetricFilter where
  toJSON MetricFilter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterPattern" JSON..= filterPattern,
               "LogGroupName" JSON..= logGroupName,
               "MetricTransformations" JSON..= metricTransformations]
              (Prelude.catMaybes
                 [(JSON..=) "ApplyOnTransformedLogs"
                    Prelude.<$> applyOnTransformedLogs,
                  (JSON..=) "EmitSystemFieldDimensions"
                    Prelude.<$> emitSystemFieldDimensions,
                  (JSON..=) "FieldSelectionCriteria"
                    Prelude.<$> fieldSelectionCriteria,
                  (JSON..=) "FilterName" Prelude.<$> filterName])))
instance Property "ApplyOnTransformedLogs" MetricFilter where
  type PropertyType "ApplyOnTransformedLogs" MetricFilter = Value Prelude.Bool
  set newValue MetricFilter {..}
    = MetricFilter {applyOnTransformedLogs = Prelude.pure newValue, ..}
instance Property "EmitSystemFieldDimensions" MetricFilter where
  type PropertyType "EmitSystemFieldDimensions" MetricFilter = ValueList Prelude.Text
  set newValue MetricFilter {..}
    = MetricFilter
        {emitSystemFieldDimensions = Prelude.pure newValue, ..}
instance Property "FieldSelectionCriteria" MetricFilter where
  type PropertyType "FieldSelectionCriteria" MetricFilter = Value Prelude.Text
  set newValue MetricFilter {..}
    = MetricFilter {fieldSelectionCriteria = Prelude.pure newValue, ..}
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