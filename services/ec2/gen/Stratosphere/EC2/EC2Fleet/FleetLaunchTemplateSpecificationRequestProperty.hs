module Stratosphere.EC2.EC2Fleet.FleetLaunchTemplateSpecificationRequestProperty (
        FleetLaunchTemplateSpecificationRequestProperty(..),
        mkFleetLaunchTemplateSpecificationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FleetLaunchTemplateSpecificationRequestProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html>
    FleetLaunchTemplateSpecificationRequestProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-launchtemplateid>
                                                     launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-launchtemplatename>
                                                     launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-version>
                                                     version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetLaunchTemplateSpecificationRequestProperty ::
  Value Prelude.Text
  -> FleetLaunchTemplateSpecificationRequestProperty
mkFleetLaunchTemplateSpecificationRequestProperty version
  = FleetLaunchTemplateSpecificationRequestProperty
      {version = version, launchTemplateId = Prelude.Nothing,
       launchTemplateName = Prelude.Nothing}
instance ToResourceProperties FleetLaunchTemplateSpecificationRequestProperty where
  toResourceProperties
    FleetLaunchTemplateSpecificationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.FleetLaunchTemplateSpecificationRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                               (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName]))}
instance JSON.ToJSON FleetLaunchTemplateSpecificationRequestProperty where
  toJSON FleetLaunchTemplateSpecificationRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                  (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName])))
instance Property "LaunchTemplateId" FleetLaunchTemplateSpecificationRequestProperty where
  type PropertyType "LaunchTemplateId" FleetLaunchTemplateSpecificationRequestProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateSpecificationRequestProperty {..}
    = FleetLaunchTemplateSpecificationRequestProperty
        {launchTemplateId = Prelude.pure newValue, ..}
instance Property "LaunchTemplateName" FleetLaunchTemplateSpecificationRequestProperty where
  type PropertyType "LaunchTemplateName" FleetLaunchTemplateSpecificationRequestProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateSpecificationRequestProperty {..}
    = FleetLaunchTemplateSpecificationRequestProperty
        {launchTemplateName = Prelude.pure newValue, ..}
instance Property "Version" FleetLaunchTemplateSpecificationRequestProperty where
  type PropertyType "Version" FleetLaunchTemplateSpecificationRequestProperty = Value Prelude.Text
  set newValue FleetLaunchTemplateSpecificationRequestProperty {..}
    = FleetLaunchTemplateSpecificationRequestProperty
        {version = newValue, ..}