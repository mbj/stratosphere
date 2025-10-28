module Stratosphere.SNS.Topic.SubscriptionProperty (
        SubscriptionProperty(..), mkSubscriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic-subscription.html>
    SubscriptionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic-subscription.html#cfn-sns-topic-subscription-endpoint>
                          endpoint :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic-subscription.html#cfn-sns-topic-subscription-protocol>
                          protocol :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SubscriptionProperty
mkSubscriptionProperty endpoint protocol
  = SubscriptionProperty
      {haddock_workaround_ = (), endpoint = endpoint,
       protocol = protocol}
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