module Stratosphere.Budgets.Budget.SubscriberProperty (
        SubscriberProperty(..), mkSubscriberProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriberProperty
  = SubscriberProperty {address :: (Value Prelude.Text),
                        subscriptionType :: (Value Prelude.Text)}
mkSubscriberProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SubscriberProperty
mkSubscriberProperty address subscriptionType
  = SubscriberProperty
      {address = address, subscriptionType = subscriptionType}
instance ToResourceProperties SubscriberProperty where
  toResourceProperties SubscriberProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.Subscriber",
         properties = ["Address" JSON..= address,
                       "SubscriptionType" JSON..= subscriptionType]}
instance JSON.ToJSON SubscriberProperty where
  toJSON SubscriberProperty {..}
    = JSON.object
        ["Address" JSON..= address,
         "SubscriptionType" JSON..= subscriptionType]
instance Property "Address" SubscriberProperty where
  type PropertyType "Address" SubscriberProperty = Value Prelude.Text
  set newValue SubscriberProperty {..}
    = SubscriberProperty {address = newValue, ..}
instance Property "SubscriptionType" SubscriberProperty where
  type PropertyType "SubscriptionType" SubscriberProperty = Value Prelude.Text
  set newValue SubscriberProperty {..}
    = SubscriberProperty {subscriptionType = newValue, ..}