module Stratosphere.CE.AnomalySubscription (
        module Exports, AnomalySubscription(..), mkAnomalySubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CE.AnomalySubscription.ResourceTagProperty as Exports
import {-# SOURCE #-} Stratosphere.CE.AnomalySubscription.SubscriberProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnomalySubscription
  = AnomalySubscription {frequency :: (Value Prelude.Text),
                         monitorArnList :: (ValueList Prelude.Text),
                         resourceTags :: (Prelude.Maybe [ResourceTagProperty]),
                         subscribers :: [SubscriberProperty],
                         subscriptionName :: (Value Prelude.Text),
                         threshold :: (Prelude.Maybe (Value Prelude.Double)),
                         thresholdExpression :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnomalySubscription ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> [SubscriberProperty]
        -> Value Prelude.Text -> AnomalySubscription
mkAnomalySubscription
  frequency
  monitorArnList
  subscribers
  subscriptionName
  = AnomalySubscription
      {frequency = frequency, monitorArnList = monitorArnList,
       subscribers = subscribers, subscriptionName = subscriptionName,
       resourceTags = Prelude.Nothing, threshold = Prelude.Nothing,
       thresholdExpression = Prelude.Nothing}
instance ToResourceProperties AnomalySubscription where
  toResourceProperties AnomalySubscription {..}
    = ResourceProperties
        {awsType = "AWS::CE::AnomalySubscription",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Frequency" JSON..= frequency,
                            "MonitorArnList" JSON..= monitorArnList,
                            "Subscribers" JSON..= subscribers,
                            "SubscriptionName" JSON..= subscriptionName]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                               (JSON..=) "Threshold" Prelude.<$> threshold,
                               (JSON..=) "ThresholdExpression" Prelude.<$> thresholdExpression]))}
instance JSON.ToJSON AnomalySubscription where
  toJSON AnomalySubscription {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Frequency" JSON..= frequency,
               "MonitorArnList" JSON..= monitorArnList,
               "Subscribers" JSON..= subscribers,
               "SubscriptionName" JSON..= subscriptionName]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                  (JSON..=) "Threshold" Prelude.<$> threshold,
                  (JSON..=) "ThresholdExpression" Prelude.<$> thresholdExpression])))
instance Property "Frequency" AnomalySubscription where
  type PropertyType "Frequency" AnomalySubscription = Value Prelude.Text
  set newValue AnomalySubscription {..}
    = AnomalySubscription {frequency = newValue, ..}
instance Property "MonitorArnList" AnomalySubscription where
  type PropertyType "MonitorArnList" AnomalySubscription = ValueList Prelude.Text
  set newValue AnomalySubscription {..}
    = AnomalySubscription {monitorArnList = newValue, ..}
instance Property "ResourceTags" AnomalySubscription where
  type PropertyType "ResourceTags" AnomalySubscription = [ResourceTagProperty]
  set newValue AnomalySubscription {..}
    = AnomalySubscription {resourceTags = Prelude.pure newValue, ..}
instance Property "Subscribers" AnomalySubscription where
  type PropertyType "Subscribers" AnomalySubscription = [SubscriberProperty]
  set newValue AnomalySubscription {..}
    = AnomalySubscription {subscribers = newValue, ..}
instance Property "SubscriptionName" AnomalySubscription where
  type PropertyType "SubscriptionName" AnomalySubscription = Value Prelude.Text
  set newValue AnomalySubscription {..}
    = AnomalySubscription {subscriptionName = newValue, ..}
instance Property "Threshold" AnomalySubscription where
  type PropertyType "Threshold" AnomalySubscription = Value Prelude.Double
  set newValue AnomalySubscription {..}
    = AnomalySubscription {threshold = Prelude.pure newValue, ..}
instance Property "ThresholdExpression" AnomalySubscription where
  type PropertyType "ThresholdExpression" AnomalySubscription = Value Prelude.Text
  set newValue AnomalySubscription {..}
    = AnomalySubscription
        {thresholdExpression = Prelude.pure newValue, ..}