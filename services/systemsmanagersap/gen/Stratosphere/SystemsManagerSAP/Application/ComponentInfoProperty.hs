module Stratosphere.SystemsManagerSAP.Application.ComponentInfoProperty (
        ComponentInfoProperty(..), mkComponentInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-systemsmanagersap-application-componentinfo.html>
    ComponentInfoProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-systemsmanagersap-application-componentinfo.html#cfn-systemsmanagersap-application-componentinfo-componenttype>
                           componentType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-systemsmanagersap-application-componentinfo.html#cfn-systemsmanagersap-application-componentinfo-ec2instanceid>
                           ec2InstanceId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-systemsmanagersap-application-componentinfo.html#cfn-systemsmanagersap-application-componentinfo-sid>
                           sid :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentInfoProperty :: ComponentInfoProperty
mkComponentInfoProperty
  = ComponentInfoProperty
      {haddock_workaround_ = (), componentType = Prelude.Nothing,
       ec2InstanceId = Prelude.Nothing, sid = Prelude.Nothing}
instance ToResourceProperties ComponentInfoProperty where
  toResourceProperties ComponentInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::SystemsManagerSAP::Application.ComponentInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentType" Prelude.<$> componentType,
                            (JSON..=) "Ec2InstanceId" Prelude.<$> ec2InstanceId,
                            (JSON..=) "Sid" Prelude.<$> sid])}
instance JSON.ToJSON ComponentInfoProperty where
  toJSON ComponentInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentType" Prelude.<$> componentType,
               (JSON..=) "Ec2InstanceId" Prelude.<$> ec2InstanceId,
               (JSON..=) "Sid" Prelude.<$> sid]))
instance Property "ComponentType" ComponentInfoProperty where
  type PropertyType "ComponentType" ComponentInfoProperty = Value Prelude.Text
  set newValue ComponentInfoProperty {..}
    = ComponentInfoProperty {componentType = Prelude.pure newValue, ..}
instance Property "Ec2InstanceId" ComponentInfoProperty where
  type PropertyType "Ec2InstanceId" ComponentInfoProperty = Value Prelude.Text
  set newValue ComponentInfoProperty {..}
    = ComponentInfoProperty {ec2InstanceId = Prelude.pure newValue, ..}
instance Property "Sid" ComponentInfoProperty where
  type PropertyType "Sid" ComponentInfoProperty = Value Prelude.Text
  set newValue ComponentInfoProperty {..}
    = ComponentInfoProperty {sid = Prelude.pure newValue, ..}