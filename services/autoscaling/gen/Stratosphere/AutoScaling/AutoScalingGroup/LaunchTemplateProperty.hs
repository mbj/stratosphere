module Stratosphere.AutoScaling.AutoScalingGroup.LaunchTemplateProperty (
        module Exports, LaunchTemplateProperty(..),
        mkLaunchTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.LaunchTemplateOverridesProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.LaunchTemplateSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data LaunchTemplateProperty
  = LaunchTemplateProperty {launchTemplateSpecification :: LaunchTemplateSpecificationProperty,
                            overrides :: (Prelude.Maybe [LaunchTemplateOverridesProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateProperty ::
  LaunchTemplateSpecificationProperty -> LaunchTemplateProperty
mkLaunchTemplateProperty launchTemplateSpecification
  = LaunchTemplateProperty
      {launchTemplateSpecification = launchTemplateSpecification,
       overrides = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateProperty where
  toResourceProperties LaunchTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.LaunchTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LaunchTemplateSpecification" JSON..= launchTemplateSpecification]
                           (Prelude.catMaybes [(JSON..=) "Overrides" Prelude.<$> overrides]))}
instance JSON.ToJSON LaunchTemplateProperty where
  toJSON LaunchTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LaunchTemplateSpecification" JSON..= launchTemplateSpecification]
              (Prelude.catMaybes [(JSON..=) "Overrides" Prelude.<$> overrides])))
instance Property "LaunchTemplateSpecification" LaunchTemplateProperty where
  type PropertyType "LaunchTemplateSpecification" LaunchTemplateProperty = LaunchTemplateSpecificationProperty
  set newValue LaunchTemplateProperty {..}
    = LaunchTemplateProperty
        {launchTemplateSpecification = newValue, ..}
instance Property "Overrides" LaunchTemplateProperty where
  type PropertyType "Overrides" LaunchTemplateProperty = [LaunchTemplateOverridesProperty]
  set newValue LaunchTemplateProperty {..}
    = LaunchTemplateProperty {overrides = Prelude.pure newValue, ..}