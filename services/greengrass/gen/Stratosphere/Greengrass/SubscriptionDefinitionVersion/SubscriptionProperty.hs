module Stratosphere.Greengrass.SubscriptionDefinitionVersion.SubscriptionProperty (
        SubscriptionProperty(..), mkSubscriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionProperty
  = SubscriptionProperty {id :: (Value Prelude.Text),
                          source :: (Value Prelude.Text),
                          subject :: (Value Prelude.Text),
                          target :: (Value Prelude.Text)}
mkSubscriptionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> SubscriptionProperty
mkSubscriptionProperty id source subject target
  = SubscriptionProperty
      {id = id, source = source, subject = subject, target = target}
instance ToResourceProperties SubscriptionProperty where
  toResourceProperties SubscriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::SubscriptionDefinitionVersion.Subscription",
         properties = ["Id" JSON..= id, "Source" JSON..= source,
                       "Subject" JSON..= subject, "Target" JSON..= target]}
instance JSON.ToJSON SubscriptionProperty where
  toJSON SubscriptionProperty {..}
    = JSON.object
        ["Id" JSON..= id, "Source" JSON..= source,
         "Subject" JSON..= subject, "Target" JSON..= target]
instance Property "Id" SubscriptionProperty where
  type PropertyType "Id" SubscriptionProperty = Value Prelude.Text
  set newValue SubscriptionProperty {..}
    = SubscriptionProperty {id = newValue, ..}
instance Property "Source" SubscriptionProperty where
  type PropertyType "Source" SubscriptionProperty = Value Prelude.Text
  set newValue SubscriptionProperty {..}
    = SubscriptionProperty {source = newValue, ..}
instance Property "Subject" SubscriptionProperty where
  type PropertyType "Subject" SubscriptionProperty = Value Prelude.Text
  set newValue SubscriptionProperty {..}
    = SubscriptionProperty {subject = newValue, ..}
instance Property "Target" SubscriptionProperty where
  type PropertyType "Target" SubscriptionProperty = Value Prelude.Text
  set newValue SubscriptionProperty {..}
    = SubscriptionProperty {target = newValue, ..}