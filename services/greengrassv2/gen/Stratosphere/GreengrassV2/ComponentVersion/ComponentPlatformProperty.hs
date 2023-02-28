module Stratosphere.GreengrassV2.ComponentVersion.ComponentPlatformProperty (
        ComponentPlatformProperty(..), mkComponentPlatformProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentPlatformProperty
  = ComponentPlatformProperty {attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                               name :: (Prelude.Maybe (Value Prelude.Text))}
mkComponentPlatformProperty :: ComponentPlatformProperty
mkComponentPlatformProperty
  = ComponentPlatformProperty
      {attributes = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties ComponentPlatformProperty where
  toResourceProperties ComponentPlatformProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.ComponentPlatform",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Attributes" Prelude.<$> attributes,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ComponentPlatformProperty where
  toJSON ComponentPlatformProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Attributes" Prelude.<$> attributes,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Attributes" ComponentPlatformProperty where
  type PropertyType "Attributes" ComponentPlatformProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ComponentPlatformProperty {..}
    = ComponentPlatformProperty
        {attributes = Prelude.pure newValue, ..}
instance Property "Name" ComponentPlatformProperty where
  type PropertyType "Name" ComponentPlatformProperty = Value Prelude.Text
  set newValue ComponentPlatformProperty {..}
    = ComponentPlatformProperty {name = Prelude.pure newValue, ..}