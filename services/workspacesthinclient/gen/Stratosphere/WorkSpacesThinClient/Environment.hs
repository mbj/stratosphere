module Stratosphere.WorkSpacesThinClient.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesThinClient.Environment.MaintenanceWindowProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Environment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html>
    Environment {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-desiredsoftwaresetid>
                 desiredSoftwareSetId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-desktoparn>
                 desktopArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-desktopendpoint>
                 desktopEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-devicecreationtags>
                 deviceCreationTags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-kmskeyarn>
                 kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-maintenancewindow>
                 maintenanceWindow :: (Prelude.Maybe MaintenanceWindowProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-name>
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-softwaresetupdatemode>
                 softwareSetUpdateMode :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-softwaresetupdateschedule>
                 softwareSetUpdateSchedule :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesthinclient-environment.html#cfn-workspacesthinclient-environment-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment :: Value Prelude.Text -> Environment
mkEnvironment desktopArn
  = Environment
      {haddock_workaround_ = (), desktopArn = desktopArn,
       desiredSoftwareSetId = Prelude.Nothing,
       desktopEndpoint = Prelude.Nothing,
       deviceCreationTags = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       maintenanceWindow = Prelude.Nothing, name = Prelude.Nothing,
       softwareSetUpdateMode = Prelude.Nothing,
       softwareSetUpdateSchedule = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesThinClient::Environment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DesktopArn" JSON..= desktopArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DesiredSoftwareSetId" Prelude.<$> desiredSoftwareSetId,
                               (JSON..=) "DesktopEndpoint" Prelude.<$> desktopEndpoint,
                               (JSON..=) "DeviceCreationTags" Prelude.<$> deviceCreationTags,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "SoftwareSetUpdateMode"
                                 Prelude.<$> softwareSetUpdateMode,
                               (JSON..=) "SoftwareSetUpdateSchedule"
                                 Prelude.<$> softwareSetUpdateSchedule,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DesktopArn" JSON..= desktopArn]
              (Prelude.catMaybes
                 [(JSON..=) "DesiredSoftwareSetId" Prelude.<$> desiredSoftwareSetId,
                  (JSON..=) "DesktopEndpoint" Prelude.<$> desktopEndpoint,
                  (JSON..=) "DeviceCreationTags" Prelude.<$> deviceCreationTags,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "SoftwareSetUpdateMode"
                    Prelude.<$> softwareSetUpdateMode,
                  (JSON..=) "SoftwareSetUpdateSchedule"
                    Prelude.<$> softwareSetUpdateSchedule,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DesiredSoftwareSetId" Environment where
  type PropertyType "DesiredSoftwareSetId" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {desiredSoftwareSetId = Prelude.pure newValue, ..}
instance Property "DesktopArn" Environment where
  type PropertyType "DesktopArn" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {desktopArn = newValue, ..}
instance Property "DesktopEndpoint" Environment where
  type PropertyType "DesktopEndpoint" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {desktopEndpoint = Prelude.pure newValue, ..}
instance Property "DeviceCreationTags" Environment where
  type PropertyType "DeviceCreationTags" Environment = [Tag]
  set newValue Environment {..}
    = Environment {deviceCreationTags = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" Environment where
  type PropertyType "KmsKeyArn" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "MaintenanceWindow" Environment where
  type PropertyType "MaintenanceWindow" Environment = MaintenanceWindowProperty
  set newValue Environment {..}
    = Environment {maintenanceWindow = Prelude.pure newValue, ..}
instance Property "Name" Environment where
  type PropertyType "Name" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {name = Prelude.pure newValue, ..}
instance Property "SoftwareSetUpdateMode" Environment where
  type PropertyType "SoftwareSetUpdateMode" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {softwareSetUpdateMode = Prelude.pure newValue, ..}
instance Property "SoftwareSetUpdateSchedule" Environment where
  type PropertyType "SoftwareSetUpdateSchedule" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment
        {softwareSetUpdateSchedule = Prelude.pure newValue, ..}
instance Property "Tags" Environment where
  type PropertyType "Tags" Environment = [Tag]
  set newValue Environment {..}
    = Environment {tags = Prelude.pure newValue, ..}