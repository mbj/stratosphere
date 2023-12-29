module Stratosphere.Pinpoint.InAppTemplate.ButtonConfigProperty (
        module Exports, ButtonConfigProperty(..), mkButtonConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.InAppTemplate.DefaultButtonConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.InAppTemplate.OverrideButtonConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ButtonConfigProperty
  = ButtonConfigProperty {android :: (Prelude.Maybe OverrideButtonConfigurationProperty),
                          defaultConfig :: (Prelude.Maybe DefaultButtonConfigurationProperty),
                          iOS :: (Prelude.Maybe OverrideButtonConfigurationProperty),
                          web :: (Prelude.Maybe OverrideButtonConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkButtonConfigProperty :: ButtonConfigProperty
mkButtonConfigProperty
  = ButtonConfigProperty
      {android = Prelude.Nothing, defaultConfig = Prelude.Nothing,
       iOS = Prelude.Nothing, web = Prelude.Nothing}
instance ToResourceProperties ButtonConfigProperty where
  toResourceProperties ButtonConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::InAppTemplate.ButtonConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Android" Prelude.<$> android,
                            (JSON..=) "DefaultConfig" Prelude.<$> defaultConfig,
                            (JSON..=) "IOS" Prelude.<$> iOS, (JSON..=) "Web" Prelude.<$> web])}
instance JSON.ToJSON ButtonConfigProperty where
  toJSON ButtonConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Android" Prelude.<$> android,
               (JSON..=) "DefaultConfig" Prelude.<$> defaultConfig,
               (JSON..=) "IOS" Prelude.<$> iOS, (JSON..=) "Web" Prelude.<$> web]))
instance Property "Android" ButtonConfigProperty where
  type PropertyType "Android" ButtonConfigProperty = OverrideButtonConfigurationProperty
  set newValue ButtonConfigProperty {..}
    = ButtonConfigProperty {android = Prelude.pure newValue, ..}
instance Property "DefaultConfig" ButtonConfigProperty where
  type PropertyType "DefaultConfig" ButtonConfigProperty = DefaultButtonConfigurationProperty
  set newValue ButtonConfigProperty {..}
    = ButtonConfigProperty {defaultConfig = Prelude.pure newValue, ..}
instance Property "IOS" ButtonConfigProperty where
  type PropertyType "IOS" ButtonConfigProperty = OverrideButtonConfigurationProperty
  set newValue ButtonConfigProperty {..}
    = ButtonConfigProperty {iOS = Prelude.pure newValue, ..}
instance Property "Web" ButtonConfigProperty where
  type PropertyType "Web" ButtonConfigProperty = OverrideButtonConfigurationProperty
  set newValue ButtonConfigProperty {..}
    = ButtonConfigProperty {web = Prelude.pure newValue, ..}