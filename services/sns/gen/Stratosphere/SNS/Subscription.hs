module Stratosphere.SNS.Subscription (
        Subscription(..), mkSubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Subscription
  = Subscription {deliveryPolicy :: (Prelude.Maybe JSON.Object),
                  endpoint :: (Prelude.Maybe (Value Prelude.Text)),
                  filterPolicy :: (Prelude.Maybe JSON.Object),
                  filterPolicyScope :: (Prelude.Maybe (Value Prelude.Text)),
                  protocol :: (Value Prelude.Text),
                  rawMessageDelivery :: (Prelude.Maybe (Value Prelude.Bool)),
                  redrivePolicy :: (Prelude.Maybe JSON.Object),
                  region :: (Prelude.Maybe (Value Prelude.Text)),
                  subscriptionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                  topicArn :: (Value Prelude.Text)}
mkSubscription ::
  Value Prelude.Text -> Value Prelude.Text -> Subscription
mkSubscription protocol topicArn
  = Subscription
      {protocol = protocol, topicArn = topicArn,
       deliveryPolicy = Prelude.Nothing, endpoint = Prelude.Nothing,
       filterPolicy = Prelude.Nothing,
       filterPolicyScope = Prelude.Nothing,
       rawMessageDelivery = Prelude.Nothing,
       redrivePolicy = Prelude.Nothing, region = Prelude.Nothing,
       subscriptionRoleArn = Prelude.Nothing}
instance ToResourceProperties Subscription where
  toResourceProperties Subscription {..}
    = ResourceProperties
        {awsType = "AWS::SNS::Subscription", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Protocol" JSON..= protocol, "TopicArn" JSON..= topicArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DeliveryPolicy" Prelude.<$> deliveryPolicy,
                               (JSON..=) "Endpoint" Prelude.<$> endpoint,
                               (JSON..=) "FilterPolicy" Prelude.<$> filterPolicy,
                               (JSON..=) "FilterPolicyScope" Prelude.<$> filterPolicyScope,
                               (JSON..=) "RawMessageDelivery" Prelude.<$> rawMessageDelivery,
                               (JSON..=) "RedrivePolicy" Prelude.<$> redrivePolicy,
                               (JSON..=) "Region" Prelude.<$> region,
                               (JSON..=) "SubscriptionRoleArn" Prelude.<$> subscriptionRoleArn]))}
instance JSON.ToJSON Subscription where
  toJSON Subscription {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Protocol" JSON..= protocol, "TopicArn" JSON..= topicArn]
              (Prelude.catMaybes
                 [(JSON..=) "DeliveryPolicy" Prelude.<$> deliveryPolicy,
                  (JSON..=) "Endpoint" Prelude.<$> endpoint,
                  (JSON..=) "FilterPolicy" Prelude.<$> filterPolicy,
                  (JSON..=) "FilterPolicyScope" Prelude.<$> filterPolicyScope,
                  (JSON..=) "RawMessageDelivery" Prelude.<$> rawMessageDelivery,
                  (JSON..=) "RedrivePolicy" Prelude.<$> redrivePolicy,
                  (JSON..=) "Region" Prelude.<$> region,
                  (JSON..=) "SubscriptionRoleArn" Prelude.<$> subscriptionRoleArn])))
instance Property "DeliveryPolicy" Subscription where
  type PropertyType "DeliveryPolicy" Subscription = JSON.Object
  set newValue Subscription {..}
    = Subscription {deliveryPolicy = Prelude.pure newValue, ..}
instance Property "Endpoint" Subscription where
  type PropertyType "Endpoint" Subscription = Value Prelude.Text
  set newValue Subscription {..}
    = Subscription {endpoint = Prelude.pure newValue, ..}
instance Property "FilterPolicy" Subscription where
  type PropertyType "FilterPolicy" Subscription = JSON.Object
  set newValue Subscription {..}
    = Subscription {filterPolicy = Prelude.pure newValue, ..}
instance Property "FilterPolicyScope" Subscription where
  type PropertyType "FilterPolicyScope" Subscription = Value Prelude.Text
  set newValue Subscription {..}
    = Subscription {filterPolicyScope = Prelude.pure newValue, ..}
instance Property "Protocol" Subscription where
  type PropertyType "Protocol" Subscription = Value Prelude.Text
  set newValue Subscription {..}
    = Subscription {protocol = newValue, ..}
instance Property "RawMessageDelivery" Subscription where
  type PropertyType "RawMessageDelivery" Subscription = Value Prelude.Bool
  set newValue Subscription {..}
    = Subscription {rawMessageDelivery = Prelude.pure newValue, ..}
instance Property "RedrivePolicy" Subscription where
  type PropertyType "RedrivePolicy" Subscription = JSON.Object
  set newValue Subscription {..}
    = Subscription {redrivePolicy = Prelude.pure newValue, ..}
instance Property "Region" Subscription where
  type PropertyType "Region" Subscription = Value Prelude.Text
  set newValue Subscription {..}
    = Subscription {region = Prelude.pure newValue, ..}
instance Property "SubscriptionRoleArn" Subscription where
  type PropertyType "SubscriptionRoleArn" Subscription = Value Prelude.Text
  set newValue Subscription {..}
    = Subscription {subscriptionRoleArn = Prelude.pure newValue, ..}
instance Property "TopicArn" Subscription where
  type PropertyType "TopicArn" Subscription = Value Prelude.Text
  set newValue Subscription {..}
    = Subscription {topicArn = newValue, ..}