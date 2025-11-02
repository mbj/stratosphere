module Stratosphere.Budgets.Budget.SubscriberProperty (
        SubscriberProperty(..), mkSubscriberProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriberProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html>
    SubscriberProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-address>
                        address :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-subscriber.html#cfn-budgets-budget-subscriber-subscriptiontype>
                        subscriptionType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriberProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SubscriberProperty
mkSubscriberProperty address subscriptionType
  = SubscriberProperty
      {haddock_workaround_ = (), address = address,
       subscriptionType = subscriptionType}
instance ToResourceProperties SubscriberProperty where
  toResourceProperties SubscriberProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.Subscriber",
         supportsTags = Prelude.False,
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