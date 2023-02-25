module Stratosphere.ImageBuilder.ImageRecipe.SystemsManagerAgentProperty (
        SystemsManagerAgentProperty(..), mkSystemsManagerAgentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SystemsManagerAgentProperty
  = SystemsManagerAgentProperty {uninstallAfterBuild :: (Prelude.Maybe (Value Prelude.Bool))}
mkSystemsManagerAgentProperty :: SystemsManagerAgentProperty
mkSystemsManagerAgentProperty
  = SystemsManagerAgentProperty
      {uninstallAfterBuild = Prelude.Nothing}
instance ToResourceProperties SystemsManagerAgentProperty where
  toResourceProperties SystemsManagerAgentProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImageRecipe.SystemsManagerAgent",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UninstallAfterBuild" Prelude.<$> uninstallAfterBuild])}
instance JSON.ToJSON SystemsManagerAgentProperty where
  toJSON SystemsManagerAgentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UninstallAfterBuild" Prelude.<$> uninstallAfterBuild]))
instance Property "UninstallAfterBuild" SystemsManagerAgentProperty where
  type PropertyType "UninstallAfterBuild" SystemsManagerAgentProperty = Value Prelude.Bool
  set newValue SystemsManagerAgentProperty {}
    = SystemsManagerAgentProperty
        {uninstallAfterBuild = Prelude.pure newValue, ..}