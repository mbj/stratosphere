module Stratosphere.ASK.Skill.OverridesProperty (
        OverridesProperty(..), mkOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data OverridesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html>
    OverridesProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ask-skill-overrides.html#cfn-ask-skill-overrides-manifest>
                       manifest :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOverridesProperty :: OverridesProperty
mkOverridesProperty
  = OverridesProperty
      {haddock_workaround_ = (), manifest = Prelude.Nothing}
instance ToResourceProperties OverridesProperty where
  toResourceProperties OverridesProperty {..}
    = ResourceProperties
        {awsType = "Alexa::ASK::Skill.Overrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Manifest" Prelude.<$> manifest])}
instance JSON.ToJSON OverridesProperty where
  toJSON OverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Manifest" Prelude.<$> manifest]))
instance Property "Manifest" OverridesProperty where
  type PropertyType "Manifest" OverridesProperty = JSON.Object
  set newValue OverridesProperty {..}
    = OverridesProperty {manifest = Prelude.pure newValue, ..}