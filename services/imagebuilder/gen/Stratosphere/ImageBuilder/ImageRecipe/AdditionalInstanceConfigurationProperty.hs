module Stratosphere.ImageBuilder.ImageRecipe.AdditionalInstanceConfigurationProperty (
        module Exports, AdditionalInstanceConfigurationProperty(..),
        mkAdditionalInstanceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImageRecipe.SystemsManagerAgentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdditionalInstanceConfigurationProperty
  = AdditionalInstanceConfigurationProperty {systemsManagerAgent :: (Prelude.Maybe SystemsManagerAgentProperty),
                                             userDataOverride :: (Prelude.Maybe (Value Prelude.Text))}
mkAdditionalInstanceConfigurationProperty ::
  AdditionalInstanceConfigurationProperty
mkAdditionalInstanceConfigurationProperty
  = AdditionalInstanceConfigurationProperty
      {systemsManagerAgent = Prelude.Nothing,
       userDataOverride = Prelude.Nothing}
instance ToResourceProperties AdditionalInstanceConfigurationProperty where
  toResourceProperties AdditionalInstanceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImageRecipe.AdditionalInstanceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SystemsManagerAgent" Prelude.<$> systemsManagerAgent,
                            (JSON..=) "UserDataOverride" Prelude.<$> userDataOverride])}
instance JSON.ToJSON AdditionalInstanceConfigurationProperty where
  toJSON AdditionalInstanceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SystemsManagerAgent" Prelude.<$> systemsManagerAgent,
               (JSON..=) "UserDataOverride" Prelude.<$> userDataOverride]))
instance Property "SystemsManagerAgent" AdditionalInstanceConfigurationProperty where
  type PropertyType "SystemsManagerAgent" AdditionalInstanceConfigurationProperty = SystemsManagerAgentProperty
  set newValue AdditionalInstanceConfigurationProperty {..}
    = AdditionalInstanceConfigurationProperty
        {systemsManagerAgent = Prelude.pure newValue, ..}
instance Property "UserDataOverride" AdditionalInstanceConfigurationProperty where
  type PropertyType "UserDataOverride" AdditionalInstanceConfigurationProperty = Value Prelude.Text
  set newValue AdditionalInstanceConfigurationProperty {..}
    = AdditionalInstanceConfigurationProperty
        {userDataOverride = Prelude.pure newValue, ..}