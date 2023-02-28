module Stratosphere.ImageBuilder.ContainerRecipe.InstanceConfigurationProperty (
        module Exports, InstanceConfigurationProperty(..),
        mkInstanceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ContainerRecipe.InstanceBlockDeviceMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceConfigurationProperty
  = InstanceConfigurationProperty {blockDeviceMappings :: (Prelude.Maybe [InstanceBlockDeviceMappingProperty]),
                                   image :: (Prelude.Maybe (Value Prelude.Text))}
mkInstanceConfigurationProperty :: InstanceConfigurationProperty
mkInstanceConfigurationProperty
  = InstanceConfigurationProperty
      {blockDeviceMappings = Prelude.Nothing, image = Prelude.Nothing}
instance ToResourceProperties InstanceConfigurationProperty where
  toResourceProperties InstanceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ContainerRecipe.InstanceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                            (JSON..=) "Image" Prelude.<$> image])}
instance JSON.ToJSON InstanceConfigurationProperty where
  toJSON InstanceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
               (JSON..=) "Image" Prelude.<$> image]))
instance Property "BlockDeviceMappings" InstanceConfigurationProperty where
  type PropertyType "BlockDeviceMappings" InstanceConfigurationProperty = [InstanceBlockDeviceMappingProperty]
  set newValue InstanceConfigurationProperty {..}
    = InstanceConfigurationProperty
        {blockDeviceMappings = Prelude.pure newValue, ..}
instance Property "Image" InstanceConfigurationProperty where
  type PropertyType "Image" InstanceConfigurationProperty = Value Prelude.Text
  set newValue InstanceConfigurationProperty {..}
    = InstanceConfigurationProperty {image = Prelude.pure newValue, ..}