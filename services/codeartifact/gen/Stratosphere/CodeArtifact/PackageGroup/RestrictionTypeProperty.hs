module Stratosphere.CodeArtifact.PackageGroup.RestrictionTypeProperty (
        RestrictionTypeProperty(..), mkRestrictionTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RestrictionTypeProperty
  = RestrictionTypeProperty {repositories :: (Prelude.Maybe (ValueList Prelude.Text)),
                             restrictionMode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRestrictionTypeProperty ::
  Value Prelude.Text -> RestrictionTypeProperty
mkRestrictionTypeProperty restrictionMode
  = RestrictionTypeProperty
      {restrictionMode = restrictionMode, repositories = Prelude.Nothing}
instance ToResourceProperties RestrictionTypeProperty where
  toResourceProperties RestrictionTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeArtifact::PackageGroup.RestrictionType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RestrictionMode" JSON..= restrictionMode]
                           (Prelude.catMaybes
                              [(JSON..=) "Repositories" Prelude.<$> repositories]))}
instance JSON.ToJSON RestrictionTypeProperty where
  toJSON RestrictionTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RestrictionMode" JSON..= restrictionMode]
              (Prelude.catMaybes
                 [(JSON..=) "Repositories" Prelude.<$> repositories])))
instance Property "Repositories" RestrictionTypeProperty where
  type PropertyType "Repositories" RestrictionTypeProperty = ValueList Prelude.Text
  set newValue RestrictionTypeProperty {..}
    = RestrictionTypeProperty
        {repositories = Prelude.pure newValue, ..}
instance Property "RestrictionMode" RestrictionTypeProperty where
  type PropertyType "RestrictionMode" RestrictionTypeProperty = Value Prelude.Text
  set newValue RestrictionTypeProperty {..}
    = RestrictionTypeProperty {restrictionMode = newValue, ..}