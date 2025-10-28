module Stratosphere.EC2.SpotFleet.FleetLaunchTemplateSpecificationProperty (
        FleetLaunchTemplateSpecificationProperty(..),
        mkFleetLaunchTemplateSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FleetLaunchTemplateSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html>
    FleetLaunchTemplateSpecificationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-launchtemplateid>
                                              launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-launchtemplatename>
                                              launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-version>
                                              version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetLaunchTemplateSpecificationProperty ::
  Value Prelude.Text -> FleetLaunchTemplateSpecificationProperty
mkFleetLaunchTemplateSpecificationProperty version
  = FleetLaunchTemplateSpecificationProperty
      {haddock_workaround_ = (), version = version,
       launchTemplateId = Prelude.Nothing,
       launchTemplateName = Prelude.Nothing}
instance ToResourceProperties FleetLaunchTemplateSpecificationProperty where
  toResourceProperties FleetLaunchTemplateSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.FleetLaunchTemplateSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                               (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName]))}
instance JSON.ToJSON FleetLaunchTemplateSpecificationProperty where
  toJSON FleetLaunchTemplateSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                  (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName])))
instance Property "LaunchTemplateId" FleetLaunchTemplateSpecificationProperty where
  type PropertyType "LaunchTemplateId" FleetLaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateSpecificationProperty {..}
    = FleetLaunchTemplateSpecificationProperty
        {launchTemplateId = Prelude.pure newValue, ..}
instance Property "LaunchTemplateName" FleetLaunchTemplateSpecificationProperty where
  type PropertyType "LaunchTemplateName" FleetLaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateSpecificationProperty {..}
    = FleetLaunchTemplateSpecificationProperty
        {launchTemplateName = Prelude.pure newValue, ..}
instance Property "Version" FleetLaunchTemplateSpecificationProperty where
  type PropertyType "Version" FleetLaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateSpecificationProperty {..}
    = FleetLaunchTemplateSpecificationProperty {version = newValue, ..}