module Stratosphere.Greengrass.SubscriptionDefinitionVersion.SubscriptionProperty (
        SubscriptionProperty(..), mkSubscriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html>
    SubscriptionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-id>
                          id :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-source>
                          source :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-subject>
                          subject :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinitionversion-subscription.html#cfn-greengrass-subscriptiondefinitionversion-subscription-target>
                          target :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> SubscriptionProperty
mkSubscriptionProperty id source subject target
  = SubscriptionProperty
      {haddock_workaround_ = (), id = id, source = source,
       subject = subject, target = target}
instance ToResourceProperties SubscriptionProperty where
  toResourceProperties SubscriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::SubscriptionDefinitionVersion.Subscription",
         supportsTags = Prelude.False,
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