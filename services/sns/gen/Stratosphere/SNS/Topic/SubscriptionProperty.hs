module Stratosphere.SNS.Topic.SubscriptionProperty (
        SubscriptionProperty(..), mkSubscriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionProperty
  = SubscriptionProperty {endpoint :: (Value Prelude.Text),
                          protocol :: (Value Prelude.Text)}
mkSubscriptionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SubscriptionProperty
mkSubscriptionProperty endpoint protocol
  = SubscriptionProperty {endpoint = endpoint, protocol = protocol}
instance ToResourceProperties SubscriptionProperty where
  toResourceProperties SubscriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SNS::Topic.Subscription",
         supportsTags = Prelude.False,
         properties = ["Endpoint" JSON..= endpoint,
                       "Protocol" JSON..= protocol]}
instance JSON.ToJSON SubscriptionProperty where
  toJSON SubscriptionProperty {..}
    = JSON.object
        ["Endpoint" JSON..= endpoint, "Protocol" JSON..= protocol]
instance Property "Endpoint" SubscriptionProperty where
  type PropertyType "Endpoint" SubscriptionProperty = Value Prelude.Text
  set newValue SubscriptionProperty {..}
    = SubscriptionProperty {endpoint = newValue, ..}
instance Property "Protocol" SubscriptionProperty where
  type PropertyType "Protocol" SubscriptionProperty = Value Prelude.Text
  set newValue SubscriptionProperty {..}
    = SubscriptionProperty {protocol = newValue, ..}