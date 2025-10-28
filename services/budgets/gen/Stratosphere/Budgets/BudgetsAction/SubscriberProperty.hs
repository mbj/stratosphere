module Stratosphere.Budgets.BudgetsAction.SubscriberProperty (
        SubscriberProperty(..), mkSubscriberProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriberProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-subscriber.html>
    SubscriberProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-subscriber.html#cfn-budgets-budgetsaction-subscriber-address>
                        address :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-subscriber.html#cfn-budgets-budgetsaction-subscriber-type>
                        type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriberProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SubscriberProperty
mkSubscriberProperty address type'
  = SubscriberProperty
      {haddock_workaround_ = (), address = address, type' = type'}
instance ToResourceProperties SubscriberProperty where
  toResourceProperties SubscriberProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::BudgetsAction.Subscriber",
         supportsTags = Prelude.False,
         properties = ["Address" JSON..= address, "Type" JSON..= type']}
instance JSON.ToJSON SubscriberProperty where
  toJSON SubscriberProperty {..}
    = JSON.object ["Address" JSON..= address, "Type" JSON..= type']
instance Property "Address" SubscriberProperty where
  type PropertyType "Address" SubscriberProperty = Value Prelude.Text
  set newValue SubscriberProperty {..}
    = SubscriberProperty {address = newValue, ..}
instance Property "Type" SubscriberProperty where
  type PropertyType "Type" SubscriberProperty = Value Prelude.Text
  set newValue SubscriberProperty {..}
    = SubscriberProperty {type' = newValue, ..}