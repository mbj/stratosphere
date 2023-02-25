module Stratosphere.ECS.CapacityProvider (
        module Exports, CapacityProvider(..), mkCapacityProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.CapacityProvider.AutoScalingGroupProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CapacityProvider
  = CapacityProvider {autoScalingGroupProvider :: AutoScalingGroupProviderProperty,
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      tags :: (Prelude.Maybe [Tag])}
mkCapacityProvider ::
  AutoScalingGroupProviderProperty -> CapacityProvider
mkCapacityProvider autoScalingGroupProvider
  = CapacityProvider
      {autoScalingGroupProvider = autoScalingGroupProvider,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CapacityProvider where
  toResourceProperties CapacityProvider {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoScalingGroupProvider" JSON..= autoScalingGroupProvider]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CapacityProvider where
  toJSON CapacityProvider {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoScalingGroupProvider" JSON..= autoScalingGroupProvider]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AutoScalingGroupProvider" CapacityProvider where
  type PropertyType "AutoScalingGroupProvider" CapacityProvider = AutoScalingGroupProviderProperty
  set newValue CapacityProvider {..}
    = CapacityProvider {autoScalingGroupProvider = newValue, ..}
instance Property "Name" CapacityProvider where
  type PropertyType "Name" CapacityProvider = Value Prelude.Text
  set newValue CapacityProvider {..}
    = CapacityProvider {name = Prelude.pure newValue, ..}
instance Property "Tags" CapacityProvider where
  type PropertyType "Tags" CapacityProvider = [Tag]
  set newValue CapacityProvider {..}
    = CapacityProvider {tags = Prelude.pure newValue, ..}