module Stratosphere.WorkspacesInstances.VolumeAssociation (
        VolumeAssociation(..), mkVolumeAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volumeassociation.html>
    VolumeAssociation {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volumeassociation.html#cfn-workspacesinstances-volumeassociation-device>
                       device :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volumeassociation.html#cfn-workspacesinstances-volumeassociation-disassociatemode>
                       disassociateMode :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volumeassociation.html#cfn-workspacesinstances-volumeassociation-volumeid>
                       volumeId :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volumeassociation.html#cfn-workspacesinstances-volumeassociation-workspaceinstanceid>
                       workspaceInstanceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> VolumeAssociation
mkVolumeAssociation device volumeId workspaceInstanceId
  = VolumeAssociation
      {haddock_workaround_ = (), device = device, volumeId = volumeId,
       workspaceInstanceId = workspaceInstanceId,
       disassociateMode = Prelude.Nothing}
instance ToResourceProperties VolumeAssociation where
  toResourceProperties VolumeAssociation {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::VolumeAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Device" JSON..= device, "VolumeId" JSON..= volumeId,
                            "WorkspaceInstanceId" JSON..= workspaceInstanceId]
                           (Prelude.catMaybes
                              [(JSON..=) "DisassociateMode" Prelude.<$> disassociateMode]))}
instance JSON.ToJSON VolumeAssociation where
  toJSON VolumeAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Device" JSON..= device, "VolumeId" JSON..= volumeId,
               "WorkspaceInstanceId" JSON..= workspaceInstanceId]
              (Prelude.catMaybes
                 [(JSON..=) "DisassociateMode" Prelude.<$> disassociateMode])))
instance Property "Device" VolumeAssociation where
  type PropertyType "Device" VolumeAssociation = Value Prelude.Text
  set newValue VolumeAssociation {..}
    = VolumeAssociation {device = newValue, ..}
instance Property "DisassociateMode" VolumeAssociation where
  type PropertyType "DisassociateMode" VolumeAssociation = Value Prelude.Text
  set newValue VolumeAssociation {..}
    = VolumeAssociation {disassociateMode = Prelude.pure newValue, ..}
instance Property "VolumeId" VolumeAssociation where
  type PropertyType "VolumeId" VolumeAssociation = Value Prelude.Text
  set newValue VolumeAssociation {..}
    = VolumeAssociation {volumeId = newValue, ..}
instance Property "WorkspaceInstanceId" VolumeAssociation where
  type PropertyType "WorkspaceInstanceId" VolumeAssociation = Value Prelude.Text
  set newValue VolumeAssociation {..}
    = VolumeAssociation {workspaceInstanceId = newValue, ..}