module Stratosphere.GameLift.GameServerGroup.LaunchTemplateProperty (
        LaunchTemplateProperty(..), mkLaunchTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateProperty
  = LaunchTemplateProperty {launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                            launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                            version :: (Prelude.Maybe (Value Prelude.Text))}
mkLaunchTemplateProperty :: LaunchTemplateProperty
mkLaunchTemplateProperty
  = LaunchTemplateProperty
      {launchTemplateId = Prelude.Nothing,
       launchTemplateName = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateProperty where
  toResourceProperties LaunchTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameServerGroup.LaunchTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                            (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON LaunchTemplateProperty where
  toJSON LaunchTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
               (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "LaunchTemplateId" LaunchTemplateProperty where
  type PropertyType "LaunchTemplateId" LaunchTemplateProperty = Value Prelude.Text
  set newValue LaunchTemplateProperty {..}
    = LaunchTemplateProperty
        {launchTemplateId = Prelude.pure newValue, ..}
instance Property "LaunchTemplateName" LaunchTemplateProperty where
  type PropertyType "LaunchTemplateName" LaunchTemplateProperty = Value Prelude.Text
  set newValue LaunchTemplateProperty {..}
    = LaunchTemplateProperty
        {launchTemplateName = Prelude.pure newValue, ..}
instance Property "Version" LaunchTemplateProperty where
  type PropertyType "Version" LaunchTemplateProperty = Value Prelude.Text
  set newValue LaunchTemplateProperty {..}
    = LaunchTemplateProperty {version = Prelude.pure newValue, ..}