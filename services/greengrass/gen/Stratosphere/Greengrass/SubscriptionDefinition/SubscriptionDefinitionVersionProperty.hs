module Stratosphere.Greengrass.SubscriptionDefinition.SubscriptionDefinitionVersionProperty (
        module Exports, SubscriptionDefinitionVersionProperty(..),
        mkSubscriptionDefinitionVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.SubscriptionDefinition.SubscriptionProperty as Exports
import Stratosphere.ResourceProperties
data SubscriptionDefinitionVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html>
    SubscriptionDefinitionVersionProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-subscriptiondefinition-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinition-subscriptiondefinitionversion-subscriptions>
                                           subscriptions :: [SubscriptionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionDefinitionVersionProperty ::
  [SubscriptionProperty] -> SubscriptionDefinitionVersionProperty
mkSubscriptionDefinitionVersionProperty subscriptions
  = SubscriptionDefinitionVersionProperty
      {haddock_workaround_ = (), subscriptions = subscriptions}
instance ToResourceProperties SubscriptionDefinitionVersionProperty where
  toResourceProperties SubscriptionDefinitionVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::SubscriptionDefinition.SubscriptionDefinitionVersion",
         supportsTags = Prelude.False,
         properties = ["Subscriptions" JSON..= subscriptions]}
instance JSON.ToJSON SubscriptionDefinitionVersionProperty where
  toJSON SubscriptionDefinitionVersionProperty {..}
    = JSON.object ["Subscriptions" JSON..= subscriptions]
instance Property "Subscriptions" SubscriptionDefinitionVersionProperty where
  type PropertyType "Subscriptions" SubscriptionDefinitionVersionProperty = [SubscriptionProperty]
  set newValue SubscriptionDefinitionVersionProperty {..}
    = SubscriptionDefinitionVersionProperty
        {subscriptions = newValue, ..}