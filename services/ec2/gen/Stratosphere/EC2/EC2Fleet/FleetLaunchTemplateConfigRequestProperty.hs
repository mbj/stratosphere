module Stratosphere.EC2.EC2Fleet.FleetLaunchTemplateConfigRequestProperty (
        module Exports, FleetLaunchTemplateConfigRequestProperty(..),
        mkFleetLaunchTemplateConfigRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.FleetLaunchTemplateOverridesRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.FleetLaunchTemplateSpecificationRequestProperty as Exports
import Stratosphere.ResourceProperties
data FleetLaunchTemplateConfigRequestProperty
  = FleetLaunchTemplateConfigRequestProperty {launchTemplateSpecification :: (Prelude.Maybe FleetLaunchTemplateSpecificationRequestProperty),
                                              overrides :: (Prelude.Maybe [FleetLaunchTemplateOverridesRequestProperty])}
mkFleetLaunchTemplateConfigRequestProperty ::
  FleetLaunchTemplateConfigRequestProperty
mkFleetLaunchTemplateConfigRequestProperty
  = FleetLaunchTemplateConfigRequestProperty
      {launchTemplateSpecification = Prelude.Nothing,
       overrides = Prelude.Nothing}
instance ToResourceProperties FleetLaunchTemplateConfigRequestProperty where
  toResourceProperties FleetLaunchTemplateConfigRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.FleetLaunchTemplateConfigRequest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LaunchTemplateSpecification"
                              Prelude.<$> launchTemplateSpecification,
                            (JSON..=) "Overrides" Prelude.<$> overrides])}
instance JSON.ToJSON FleetLaunchTemplateConfigRequestProperty where
  toJSON FleetLaunchTemplateConfigRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LaunchTemplateSpecification"
                 Prelude.<$> launchTemplateSpecification,
               (JSON..=) "Overrides" Prelude.<$> overrides]))
instance Property "LaunchTemplateSpecification" FleetLaunchTemplateConfigRequestProperty where
  type PropertyType "LaunchTemplateSpecification" FleetLaunchTemplateConfigRequestProperty = FleetLaunchTemplateSpecificationRequestProperty
  set newValue FleetLaunchTemplateConfigRequestProperty {..}
    = FleetLaunchTemplateConfigRequestProperty
        {launchTemplateSpecification = Prelude.pure newValue, ..}
instance Property "Overrides" FleetLaunchTemplateConfigRequestProperty where
  type PropertyType "Overrides" FleetLaunchTemplateConfigRequestProperty = [FleetLaunchTemplateOverridesRequestProperty]
  set newValue FleetLaunchTemplateConfigRequestProperty {..}
    = FleetLaunchTemplateConfigRequestProperty
        {overrides = Prelude.pure newValue, ..}