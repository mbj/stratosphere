module Stratosphere.Greengrass.SubscriptionDefinition (
        module Exports, SubscriptionDefinition(..),
        mkSubscriptionDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.SubscriptionDefinition.SubscriptionDefinitionVersionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriptionDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html>
    SubscriptionDefinition {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-initialversion>
                            initialVersion :: (Prelude.Maybe SubscriptionDefinitionVersionProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-name>
                            name :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-tags>
                            tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriptionDefinition ::
  Value Prelude.Text -> SubscriptionDefinition
mkSubscriptionDefinition name
  = SubscriptionDefinition
      {haddock_workaround_ = (), name = name,
       initialVersion = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SubscriptionDefinition where
  toResourceProperties SubscriptionDefinition {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::SubscriptionDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SubscriptionDefinition where
  toJSON SubscriptionDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "InitialVersion" Prelude.<$> initialVersion,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InitialVersion" SubscriptionDefinition where
  type PropertyType "InitialVersion" SubscriptionDefinition = SubscriptionDefinitionVersionProperty
  set newValue SubscriptionDefinition {..}
    = SubscriptionDefinition
        {initialVersion = Prelude.pure newValue, ..}
instance Property "Name" SubscriptionDefinition where
  type PropertyType "Name" SubscriptionDefinition = Value Prelude.Text
  set newValue SubscriptionDefinition {..}
    = SubscriptionDefinition {name = newValue, ..}
instance Property "Tags" SubscriptionDefinition where
  type PropertyType "Tags" SubscriptionDefinition = JSON.Object
  set newValue SubscriptionDefinition {..}
    = SubscriptionDefinition {tags = Prelude.pure newValue, ..}