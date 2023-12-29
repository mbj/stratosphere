module Stratosphere.Logs.SubscriptionFilter (
        SubscriptionFilter(..), mkSubscriptionFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionFilter
  = SubscriptionFilter {destinationArn :: (Value Prelude.Text),
                        distribution :: (Prelude.Maybe (Value Prelude.Text)),
                        filterName :: (Prelude.Maybe (Value Prelude.Text)),
                        filterPattern :: (Value Prelude.Text),
                        logGroupName :: (Value Prelude.Text),
                        roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionFilter ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> SubscriptionFilter
mkSubscriptionFilter destinationArn filterPattern logGroupName
  = SubscriptionFilter
      {destinationArn = destinationArn, filterPattern = filterPattern,
       logGroupName = logGroupName, distribution = Prelude.Nothing,
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
                              [(JSON..=) "Distribution" Prelude.<$> distribution,
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
                 [(JSON..=) "Distribution" Prelude.<$> distribution,
                  (JSON..=) "FilterName" Prelude.<$> filterName,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "DestinationArn" SubscriptionFilter where
  type PropertyType "DestinationArn" SubscriptionFilter = Value Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter {destinationArn = newValue, ..}
instance Property "Distribution" SubscriptionFilter where
  type PropertyType "Distribution" SubscriptionFilter = Value Prelude.Text
  set newValue SubscriptionFilter {..}
    = SubscriptionFilter {distribution = Prelude.pure newValue, ..}
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