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
  = SubscriptionDefinition {initialVersion :: (Prelude.Maybe SubscriptionDefinitionVersionProperty),
                            name :: (Value Prelude.Text),
                            tags :: (Prelude.Maybe JSON.Object)}
mkSubscriptionDefinition ::
  Value Prelude.Text -> SubscriptionDefinition
mkSubscriptionDefinition name
  = SubscriptionDefinition
      {name = name, initialVersion = Prelude.Nothing,
       tags = Prelude.Nothing}
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