module Stratosphere.CloudWatch.Alarm.MetricDataQueryProperty (
        module Exports, MetricDataQueryProperty(..),
        mkMetricDataQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.Alarm.MetricStatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDataQueryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html>
    MetricDataQueryProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-accountid>
                             accountId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-expression>
                             expression :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-id>
                             id :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-label>
                             label :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-metricstat>
                             metricStat :: (Prelude.Maybe MetricStatProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-period>
                             period :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-returndata>
                             returnData :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricDataQueryProperty ::
  Value Prelude.Text -> MetricDataQueryProperty
mkMetricDataQueryProperty id
  = MetricDataQueryProperty
      {haddock_workaround_ = (), id = id, accountId = Prelude.Nothing,
       expression = Prelude.Nothing, label = Prelude.Nothing,
       metricStat = Prelude.Nothing, period = Prelude.Nothing,
       returnData = Prelude.Nothing}
instance ToResourceProperties MetricDataQueryProperty where
  toResourceProperties MetricDataQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::Alarm.MetricDataQuery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "AccountId" Prelude.<$> accountId,
                               (JSON..=) "Expression" Prelude.<$> expression,
                               (JSON..=) "Label" Prelude.<$> label,
                               (JSON..=) "MetricStat" Prelude.<$> metricStat,
                               (JSON..=) "Period" Prelude.<$> period,
                               (JSON..=) "ReturnData" Prelude.<$> returnData]))}
instance JSON.ToJSON MetricDataQueryProperty where
  toJSON MetricDataQueryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "AccountId" Prelude.<$> accountId,
                  (JSON..=) "Expression" Prelude.<$> expression,
                  (JSON..=) "Label" Prelude.<$> label,
                  (JSON..=) "MetricStat" Prelude.<$> metricStat,
                  (JSON..=) "Period" Prelude.<$> period,
                  (JSON..=) "ReturnData" Prelude.<$> returnData])))
instance Property "AccountId" MetricDataQueryProperty where
  type PropertyType "AccountId" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {accountId = Prelude.pure newValue, ..}
instance Property "Expression" MetricDataQueryProperty where
  type PropertyType "Expression" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {expression = Prelude.pure newValue, ..}
instance Property "Id" MetricDataQueryProperty where
  type PropertyType "Id" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {id = newValue, ..}
instance Property "Label" MetricDataQueryProperty where
  type PropertyType "Label" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {label = Prelude.pure newValue, ..}
instance Property "MetricStat" MetricDataQueryProperty where
  type PropertyType "MetricStat" MetricDataQueryProperty = MetricStatProperty
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {metricStat = Prelude.pure newValue, ..}
instance Property "Period" MetricDataQueryProperty where
  type PropertyType "Period" MetricDataQueryProperty = Value Prelude.Integer
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {period = Prelude.pure newValue, ..}
instance Property "ReturnData" MetricDataQueryProperty where
  type PropertyType "ReturnData" MetricDataQueryProperty = Value Prelude.Bool
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {returnData = Prelude.pure newValue, ..}