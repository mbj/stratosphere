module Stratosphere.CE.AnomalySubscription.SubscriberProperty (
        SubscriberProperty(..), mkSubscriberProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriberProperty
  = SubscriberProperty {address :: (Value Prelude.Text),
                        status :: (Prelude.Maybe (Value Prelude.Text)),
                        type' :: (Value Prelude.Text)}
mkSubscriberProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SubscriberProperty
mkSubscriberProperty address type'
  = SubscriberProperty
      {address = address, type' = type', status = Prelude.Nothing}
instance ToResourceProperties SubscriberProperty where
  toResourceProperties SubscriberProperty {..}
    = ResourceProperties
        {awsType = "AWS::CE::AnomalySubscription.Subscriber",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Address" JSON..= address, "Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON SubscriberProperty where
  toJSON SubscriberProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Address" JSON..= address, "Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])))
instance Property "Address" SubscriberProperty where
  type PropertyType "Address" SubscriberProperty = Value Prelude.Text
  set newValue SubscriberProperty {..}
    = SubscriberProperty {address = newValue, ..}
instance Property "Status" SubscriberProperty where
  type PropertyType "Status" SubscriberProperty = Value Prelude.Text
  set newValue SubscriberProperty {..}
    = SubscriberProperty {status = Prelude.pure newValue, ..}
instance Property "Type" SubscriberProperty where
  type PropertyType "Type" SubscriberProperty = Value Prelude.Text
  set newValue SubscriberProperty {..}
    = SubscriberProperty {type' = newValue, ..}