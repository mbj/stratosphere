module Stratosphere.WorkSpaces.Workspace.WorkspacePropertiesProperty (
        WorkspacePropertiesProperty(..), mkWorkspacePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkspacePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html>
    WorkspacePropertiesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-computetypename>
                                 computeTypeName :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-rootvolumesizegib>
                                 rootVolumeSizeGib :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-runningmode>
                                 runningMode :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-runningmodeautostoptimeoutinminutes>
                                 runningModeAutoStopTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspace-workspaceproperties.html#cfn-workspaces-workspace-workspaceproperties-uservolumesizegib>
                                 userVolumeSizeGib :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkspacePropertiesProperty :: WorkspacePropertiesProperty
mkWorkspacePropertiesProperty
  = WorkspacePropertiesProperty
      {haddock_workaround_ = (), computeTypeName = Prelude.Nothing,
       rootVolumeSizeGib = Prelude.Nothing, runningMode = Prelude.Nothing,
       runningModeAutoStopTimeoutInMinutes = Prelude.Nothing,
       userVolumeSizeGib = Prelude.Nothing}
instance ToResourceProperties WorkspacePropertiesProperty where
  toResourceProperties WorkspacePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpaces::Workspace.WorkspaceProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputeTypeName" Prelude.<$> computeTypeName,
                            (JSON..=) "RootVolumeSizeGib" Prelude.<$> rootVolumeSizeGib,
                            (JSON..=) "RunningMode" Prelude.<$> runningMode,
                            (JSON..=) "RunningModeAutoStopTimeoutInMinutes"
                              Prelude.<$> runningModeAutoStopTimeoutInMinutes,
                            (JSON..=) "UserVolumeSizeGib" Prelude.<$> userVolumeSizeGib])}
instance JSON.ToJSON WorkspacePropertiesProperty where
  toJSON WorkspacePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputeTypeName" Prelude.<$> computeTypeName,
               (JSON..=) "RootVolumeSizeGib" Prelude.<$> rootVolumeSizeGib,
               (JSON..=) "RunningMode" Prelude.<$> runningMode,
               (JSON..=) "RunningModeAutoStopTimeoutInMinutes"
                 Prelude.<$> runningModeAutoStopTimeoutInMinutes,
               (JSON..=) "UserVolumeSizeGib" Prelude.<$> userVolumeSizeGib]))
instance Property "ComputeTypeName" WorkspacePropertiesProperty where
  type PropertyType "ComputeTypeName" WorkspacePropertiesProperty = Value Prelude.Text
  set newValue WorkspacePropertiesProperty {..}
    = WorkspacePropertiesProperty
        {computeTypeName = Prelude.pure newValue, ..}
instance Property "RootVolumeSizeGib" WorkspacePropertiesProperty where
  type PropertyType "RootVolumeSizeGib" WorkspacePropertiesProperty = Value Prelude.Integer
  set newValue WorkspacePropertiesProperty {..}
    = WorkspacePropertiesProperty
        {rootVolumeSizeGib = Prelude.pure newValue, ..}
instance Property "RunningMode" WorkspacePropertiesProperty where
  type PropertyType "RunningMode" WorkspacePropertiesProperty = Value Prelude.Text
  set newValue WorkspacePropertiesProperty {..}
    = WorkspacePropertiesProperty
        {runningMode = Prelude.pure newValue, ..}
instance Property "RunningModeAutoStopTimeoutInMinutes" WorkspacePropertiesProperty where
  type PropertyType "RunningModeAutoStopTimeoutInMinutes" WorkspacePropertiesProperty = Value Prelude.Integer
  set newValue WorkspacePropertiesProperty {..}
    = WorkspacePropertiesProperty
        {runningModeAutoStopTimeoutInMinutes = Prelude.pure newValue, ..}
instance Property "UserVolumeSizeGib" WorkspacePropertiesProperty where
  type PropertyType "UserVolumeSizeGib" WorkspacePropertiesProperty = Value Prelude.Integer
  set newValue WorkspacePropertiesProperty {..}
    = WorkspacePropertiesProperty
        {userVolumeSizeGib = Prelude.pure newValue, ..}