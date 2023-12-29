module Stratosphere.EC2.SpotFleet.LaunchTemplateConfigProperty (
        module Exports, LaunchTemplateConfigProperty(..),
        mkLaunchTemplateConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.FleetLaunchTemplateSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.LaunchTemplateOverridesProperty as Exports
import Stratosphere.ResourceProperties
data LaunchTemplateConfigProperty
  = LaunchTemplateConfigProperty {launchTemplateSpecification :: (Prelude.Maybe FleetLaunchTemplateSpecificationProperty),
                                  overrides :: (Prelude.Maybe [LaunchTemplateOverridesProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateConfigProperty :: LaunchTemplateConfigProperty
mkLaunchTemplateConfigProperty
  = LaunchTemplateConfigProperty
      {launchTemplateSpecification = Prelude.Nothing,
       overrides = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateConfigProperty where
  toResourceProperties LaunchTemplateConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.LaunchTemplateConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LaunchTemplateSpecification"
                              Prelude.<$> launchTemplateSpecification,
                            (JSON..=) "Overrides" Prelude.<$> overrides])}
instance JSON.ToJSON LaunchTemplateConfigProperty where
  toJSON LaunchTemplateConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LaunchTemplateSpecification"
                 Prelude.<$> launchTemplateSpecification,
               (JSON..=) "Overrides" Prelude.<$> overrides]))
instance Property "LaunchTemplateSpecification" LaunchTemplateConfigProperty where
  type PropertyType "LaunchTemplateSpecification" LaunchTemplateConfigProperty = FleetLaunchTemplateSpecificationProperty
  set newValue LaunchTemplateConfigProperty {..}
    = LaunchTemplateConfigProperty
        {launchTemplateSpecification = Prelude.pure newValue, ..}
instance Property "Overrides" LaunchTemplateConfigProperty where
  type PropertyType "Overrides" LaunchTemplateConfigProperty = [LaunchTemplateOverridesProperty]
  set newValue LaunchTemplateConfigProperty {..}
    = LaunchTemplateConfigProperty
        {overrides = Prelude.pure newValue, ..}