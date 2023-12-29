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
  = FleetLaunchTemplateSpecificationProperty {launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                              launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                                              version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetLaunchTemplateSpecificationProperty ::
  Value Prelude.Text -> FleetLaunchTemplateSpecificationProperty
mkFleetLaunchTemplateSpecificationProperty version
  = FleetLaunchTemplateSpecificationProperty
      {version = version, launchTemplateId = Prelude.Nothing,
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