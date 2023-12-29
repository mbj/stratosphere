module Stratosphere.IoT1Click.Project.PlacementTemplateProperty (
        PlacementTemplateProperty(..), mkPlacementTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data PlacementTemplateProperty
  = PlacementTemplateProperty {defaultAttributes :: (Prelude.Maybe JSON.Object),
                               deviceTemplates :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementTemplateProperty :: PlacementTemplateProperty
mkPlacementTemplateProperty
  = PlacementTemplateProperty
      {defaultAttributes = Prelude.Nothing,
       deviceTemplates = Prelude.Nothing}
instance ToResourceProperties PlacementTemplateProperty where
  toResourceProperties PlacementTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT1Click::Project.PlacementTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultAttributes" Prelude.<$> defaultAttributes,
                            (JSON..=) "DeviceTemplates" Prelude.<$> deviceTemplates])}
instance JSON.ToJSON PlacementTemplateProperty where
  toJSON PlacementTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultAttributes" Prelude.<$> defaultAttributes,
               (JSON..=) "DeviceTemplates" Prelude.<$> deviceTemplates]))
instance Property "DefaultAttributes" PlacementTemplateProperty where
  type PropertyType "DefaultAttributes" PlacementTemplateProperty = JSON.Object
  set newValue PlacementTemplateProperty {..}
    = PlacementTemplateProperty
        {defaultAttributes = Prelude.pure newValue, ..}
instance Property "DeviceTemplates" PlacementTemplateProperty where
  type PropertyType "DeviceTemplates" PlacementTemplateProperty = JSON.Object
  set newValue PlacementTemplateProperty {..}
    = PlacementTemplateProperty
        {deviceTemplates = Prelude.pure newValue, ..}