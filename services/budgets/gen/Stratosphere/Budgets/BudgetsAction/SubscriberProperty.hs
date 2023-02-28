module Stratosphere.Budgets.BudgetsAction.SubscriberProperty (
        SubscriberProperty(..), mkSubscriberProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriberProperty
  = SubscriberProperty {address :: (Value Prelude.Text),
                        type' :: (Value Prelude.Text)}
mkSubscriberProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SubscriberProperty
mkSubscriberProperty address type'
  = SubscriberProperty {address = address, type' = type'}
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