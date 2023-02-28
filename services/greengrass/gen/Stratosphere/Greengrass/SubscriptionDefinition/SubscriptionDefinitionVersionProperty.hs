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
  = SubscriptionDefinitionVersionProperty {subscriptions :: [SubscriptionProperty]}
mkSubscriptionDefinitionVersionProperty ::
  [SubscriptionProperty] -> SubscriptionDefinitionVersionProperty
mkSubscriptionDefinitionVersionProperty subscriptions
  = SubscriptionDefinitionVersionProperty
      {subscriptions = subscriptions}
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
  set newValue SubscriptionDefinitionVersionProperty {}
    = SubscriptionDefinitionVersionProperty
        {subscriptions = newValue, ..}