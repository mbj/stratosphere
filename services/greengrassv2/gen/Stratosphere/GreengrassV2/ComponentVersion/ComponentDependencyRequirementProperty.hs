module Stratosphere.GreengrassV2.ComponentVersion.ComponentDependencyRequirementProperty (
        ComponentDependencyRequirementProperty(..),
        mkComponentDependencyRequirementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentDependencyRequirementProperty
  = ComponentDependencyRequirementProperty {dependencyType :: (Prelude.Maybe (Value Prelude.Text)),
                                            versionRequirement :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentDependencyRequirementProperty ::
  ComponentDependencyRequirementProperty
mkComponentDependencyRequirementProperty
  = ComponentDependencyRequirementProperty
      {dependencyType = Prelude.Nothing,
       versionRequirement = Prelude.Nothing}
instance ToResourceProperties ComponentDependencyRequirementProperty where
  toResourceProperties ComponentDependencyRequirementProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.ComponentDependencyRequirement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DependencyType" Prelude.<$> dependencyType,
                            (JSON..=) "VersionRequirement" Prelude.<$> versionRequirement])}
instance JSON.ToJSON ComponentDependencyRequirementProperty where
  toJSON ComponentDependencyRequirementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DependencyType" Prelude.<$> dependencyType,
               (JSON..=) "VersionRequirement" Prelude.<$> versionRequirement]))
instance Property "DependencyType" ComponentDependencyRequirementProperty where
  type PropertyType "DependencyType" ComponentDependencyRequirementProperty = Value Prelude.Text
  set newValue ComponentDependencyRequirementProperty {..}
    = ComponentDependencyRequirementProperty
        {dependencyType = Prelude.pure newValue, ..}
instance Property "VersionRequirement" ComponentDependencyRequirementProperty where
  type PropertyType "VersionRequirement" ComponentDependencyRequirementProperty = Value Prelude.Text
  set newValue ComponentDependencyRequirementProperty {..}
    = ComponentDependencyRequirementProperty
        {versionRequirement = Prelude.pure newValue, ..}