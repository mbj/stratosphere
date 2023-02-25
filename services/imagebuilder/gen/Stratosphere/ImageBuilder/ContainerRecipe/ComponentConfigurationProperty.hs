module Stratosphere.ImageBuilder.ContainerRecipe.ComponentConfigurationProperty (
        module Exports, ComponentConfigurationProperty(..),
        mkComponentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ContainerRecipe.ComponentParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentConfigurationProperty
  = ComponentConfigurationProperty {componentArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    parameters :: (Prelude.Maybe [ComponentParameterProperty])}
mkComponentConfigurationProperty :: ComponentConfigurationProperty
mkComponentConfigurationProperty
  = ComponentConfigurationProperty
      {componentArn = Prelude.Nothing, parameters = Prelude.Nothing}
instance ToResourceProperties ComponentConfigurationProperty where
  toResourceProperties ComponentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ContainerRecipe.ComponentConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentArn" Prelude.<$> componentArn,
                            (JSON..=) "Parameters" Prelude.<$> parameters])}
instance JSON.ToJSON ComponentConfigurationProperty where
  toJSON ComponentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentArn" Prelude.<$> componentArn,
               (JSON..=) "Parameters" Prelude.<$> parameters]))
instance Property "ComponentArn" ComponentConfigurationProperty where
  type PropertyType "ComponentArn" ComponentConfigurationProperty = Value Prelude.Text
  set newValue ComponentConfigurationProperty {..}
    = ComponentConfigurationProperty
        {componentArn = Prelude.pure newValue, ..}
instance Property "Parameters" ComponentConfigurationProperty where
  type PropertyType "Parameters" ComponentConfigurationProperty = [ComponentParameterProperty]
  set newValue ComponentConfigurationProperty {..}
    = ComponentConfigurationProperty
        {parameters = Prelude.pure newValue, ..}