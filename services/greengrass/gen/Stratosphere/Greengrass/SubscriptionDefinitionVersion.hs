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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html>
    SubscriptionDefinitionVersion {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinitionversion-subscriptiondefinitionid>
                                   subscriptionDefinitionId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinitionversion.html#cfn-greengrass-subscriptiondefinitionversion-subscriptions>
                                   subscriptions :: [SubscriptionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionDefinitionVersion ::
  Value Prelude.Text
  -> [SubscriptionProperty] -> SubscriptionDefinitionVersion
mkSubscriptionDefinitionVersion
  subscriptionDefinitionId
  subscriptions
  = SubscriptionDefinitionVersion
      {haddock_workaround_ = (),
       subscriptionDefinitionId = subscriptionDefinitionId,
       subscriptions = subscriptions}
instance ToResourceProperties SubscriptionDefinitionVersion where
  toResourceProperties SubscriptionDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::SubscriptionDefinitionVersion",
         supportsTags = Prelude.False,
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