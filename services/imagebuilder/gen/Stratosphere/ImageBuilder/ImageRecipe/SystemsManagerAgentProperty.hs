module Stratosphere.ImageBuilder.ImageRecipe.SystemsManagerAgentProperty (
        SystemsManagerAgentProperty(..), mkSystemsManagerAgentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SystemsManagerAgentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-systemsmanageragent.html>
    SystemsManagerAgentProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-systemsmanageragent.html#cfn-imagebuilder-imagerecipe-systemsmanageragent-uninstallafterbuild>
                                 uninstallAfterBuild :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSystemsManagerAgentProperty :: SystemsManagerAgentProperty
mkSystemsManagerAgentProperty
  = SystemsManagerAgentProperty
      {haddock_workaround_ = (), uninstallAfterBuild = Prelude.Nothing}
instance ToResourceProperties SystemsManagerAgentProperty where
  toResourceProperties SystemsManagerAgentProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImageRecipe.SystemsManagerAgent",
         supportsTags = Prelude.False,
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
  set newValue SystemsManagerAgentProperty {..}
    = SystemsManagerAgentProperty
        {uninstallAfterBuild = Prelude.pure newValue, ..}