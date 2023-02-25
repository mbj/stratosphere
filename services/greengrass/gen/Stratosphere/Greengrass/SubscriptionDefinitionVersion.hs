module Stratosphere.Greengrass.SubscriptionDefinitionVersion (
        module Exports, SubscriptionDefinitionVersion(..),
        mkSubscriptionDefinitionVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.SubscriptionDefinitionVersion.SubscriptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionDefinitionVersion
  = SubscriptionDefinitionVersion {subscriptionDefinitionId :: (Value Prelude.Text),
                                   subscriptions :: [SubscriptionProperty]}
mkSubscriptionDefinitionVersion ::
  Value Prelude.Text
  -> [SubscriptionProperty] -> SubscriptionDefinitionVersion
mkSubscriptionDefinitionVersion
  subscriptionDefinitionId
  subscriptions
  = SubscriptionDefinitionVersion
      {subscriptionDefinitionId = subscriptionDefinitionId,
       subscriptions = subscriptions}
instance ToResourceProperties SubscriptionDefinitionVersion where
  toResourceProperties SubscriptionDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::SubscriptionDefinitionVersion",
         properties = ["SubscriptionDefinitionId"
                         JSON..= subscriptionDefinitionId,
                       "Subscriptions" JSON..= subscriptions]}
instance JSON.ToJSON SubscriptionDefinitionVersion where
  toJSON SubscriptionDefinitionVersion {..}
    = JSON.object
        ["SubscriptionDefinitionId" JSON..= subscriptionDefinitionId,
         "Subscriptions" JSON..= subscriptions]
instance Property "SubscriptionDefinitionId" SubscriptionDefinitionVersion where
  type PropertyType "SubscriptionDefinitionId" SubscriptionDefinitionVersion = Value Prelude.Text
  set newValue SubscriptionDefinitionVersion {..}
    = SubscriptionDefinitionVersion
        {subscriptionDefinitionId = newValue, ..}
instance Property "Subscriptions" SubscriptionDefinitionVersion where
  type PropertyType "Subscriptions" SubscriptionDefinitionVersion = [SubscriptionProperty]
  set newValue SubscriptionDefinitionVersion {..}
    = SubscriptionDefinitionVersion {subscriptions = newValue, ..}