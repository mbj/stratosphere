module Stratosphere.Logs.SubscriptionFilter (
        SubscriptionFilter(..), mkSubscriptionFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionFilter
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html>
    SubscriptionFilter {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-logs-subscriptionfilter-applyontransformedlogs>
                        applyOnTransformedLogs :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-logs-subscriptionfilter-destinationarn>
                        destinationArn :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-logs-subscriptionfilter-distribution>
                        distribution :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-logs-subscriptionfilter-emitsystemfields>
                        emitSystemFields :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-logs-subscriptionfilter-fieldselectioncriteria>
                        fieldSelectionCriteria :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-logs-subscriptionfilter-filtername>
                        filterName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-logs-subscriptionfilter-filterpattern>
                        filterPattern :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-logs-subscriptionfilter-loggroupname>
                        logGroupName :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-subscriptionfilter.html#cfn-logs-subscriptionfilter-rolearn>
                        roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionFilter ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> SubscriptionFilter
mkSubscriptionFilter destinationArn filterPattern logGroupName
  = SubscriptionFilter
      {haddock_workaround_ = (), destinationArn = destinationArn,
       filterPattern = filterPattern, logGroupName = logGroupName,
       applyOnTransformedLogs = Prelude.Nothing,
       distribution = Prelude.Nothing, emitSystemFields = Prelude.Nothing,
       fieldSelectionCriteria = Prelude.Nothing,
       filterName = Prelude.Nothing, roleArn = Prelude.Nothing}
instance ToResourceProperties SubscriptionFilter where
  toResourceProperties SubscriptionFilter {..}
    = ResourceProperties
        {awsType = "AWS::Logs::SubscriptionFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationArn" JSON..= destinationArn,
                            "FilterPattern" JSON..= filterPattern,
                            "LogGroupName" JSON..= logGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplyOnTransformedLogs"
                                 Prelude.<$> applyOnTransformedLogs,
                               (JSON..=) "Distribution" Prelude.<$> distribution,
                               (JSON..=) "EmitSystemFields" Prelude.<$> emitSystemFields,
                               (JSON..=) "FieldSelectionCriteria"
                                 Prelude.<$> fieldSelectionCriteria,
                               (JSON..=) "FilterName" Prelude.<$> filterName,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON SubscriptionFilter where
  toJSON SubscriptionFilter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationArn" JSON..= destinationArn,
               "FilterPattern" JSON..= filterPattern,
               "LogGroupName" JSON..= logGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "ApplyOnTransformedLogs"
                    Prelude.<$> applyOnTransformedLogs,
                  (JSON..=) "Distribution" Prelude.<$> distribution,
                  (JSON..=) "EmitSystemFields" Prelude.<$> emitSystemFields,
                  (JSON..=) "FieldSelectionCriteria"
                    Prelude.<$> fieldSelectionCriteria,
                  (JSON..=) "FilterName" Prelude.<$> filterName,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "ApplyOnTransformedLogs" SubscriptionFilter where
  type PropertyType "ApplyOnTransformedLogs" SubscriptionFilter = Value Prelude.Bool
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter
        {applyOnTransformedLogs = Prelude.pure newValue, ..}
instance Property "DestinationArn" SubscriptionFilter where
  type PropertyType "DestinationArn" SubscriptionFilter = Value Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter {destinationArn = newValue, ..}
instance Property "Distribution" SubscriptionFilter where
  type PropertyType "Distribution" SubscriptionFilter = Value Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter {distribution = Prelude.pure newValue, ..}
instance Property "EmitSystemFields" SubscriptionFilter where
  type PropertyType "EmitSystemFields" SubscriptionFilter = ValueList Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter {emitSystemFields = Prelude.pure newValue, ..}
instance Property "FieldSelectionCriteria" SubscriptionFilter where
  type PropertyType "FieldSelectionCriteria" SubscriptionFilter = Value Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter
        {fieldSelectionCriteria = Prelude.pure newValue, ..}
instance Property "FilterName" SubscriptionFilter where
  type PropertyType "FilterName" SubscriptionFilter = Value Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter {filterName = Prelude.pure newValue, ..}
instance Property "FilterPattern" SubscriptionFilter where
  type PropertyType "FilterPattern" SubscriptionFilter = Value Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter {filterPattern = newValue, ..}
instance Property "LogGroupName" SubscriptionFilter where
  type PropertyType "LogGroupName" SubscriptionFilter = Value Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter {logGroupName = newValue, ..}
instance Property "RoleArn" SubscriptionFilter where
  type PropertyType "RoleArn" SubscriptionFilter = Value Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter {roleArn = Prelude.pure newValue, ..}