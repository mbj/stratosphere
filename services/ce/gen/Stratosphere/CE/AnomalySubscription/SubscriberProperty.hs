module Stratosphere.CE.AnomalySubscription.SubscriberProperty (
        SubscriberProperty(..), mkSubscriberProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriberProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ce-anomalysubscription-subscriber.html>
    SubscriberProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ce-anomalysubscription-subscriber.html#cfn-ce-anomalysubscription-subscriber-address>
                        address :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ce-anomalysubscription-subscriber.html#cfn-ce-anomalysubscription-subscriber-status>
                        status :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ce-anomalysubscription-subscriber.html#cfn-ce-anomalysubscription-subscriber-type>
                        type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriberProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SubscriberProperty
mkSubscriberProperty address type'
  = SubscriberProperty
      {haddock_workaround_ = (), address = address, type' = type',
       status = Prelude.Nothing}
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