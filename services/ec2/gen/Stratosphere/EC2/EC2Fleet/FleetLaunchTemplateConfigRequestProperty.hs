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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html>
    FleetLaunchTemplateConfigRequestProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-launchtemplatespecification>
                                              launchTemplateSpecification :: (Prelude.Maybe FleetLaunchTemplateSpecificationRequestProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-overrides>
                                              overrides :: (Prelude.Maybe [FleetLaunchTemplateOverridesRequestProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetLaunchTemplateConfigRequestProperty ::
  FleetLaunchTemplateConfigRequestProperty
mkFleetLaunchTemplateConfigRequestProperty
  = FleetLaunchTemplateConfigRequestProperty
      {haddock_workaround_ = (),
       launchTemplateSpecification = Prelude.Nothing,
       overrides = Prelude.Nothing}
instance ToResourceProperties FleetLaunchTemplateConfigRequestProperty where
  toResourceProperties FleetLaunchTemplateConfigRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.FleetLaunchTemplateConfigRequest",
         supportsTags = Prelude.False,
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