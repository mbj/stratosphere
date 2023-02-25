module Stratosphere.WorkSpaces.Workspace.WorkspacePropertiesProperty (
        WorkspacePropertiesProperty(..), mkWorkspacePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkspacePropertiesProperty
  = WorkspacePropertiesProperty {computeTypeName :: (Prelude.Maybe (Value Prelude.Text)),
                                 rootVolumeSizeGib :: (Prelude.Maybe (Value Prelude.Integer)),
                                 runningMode :: (Prelude.Maybe (Value Prelude.Text)),
                                 runningModeAutoStopTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                                 userVolumeSizeGib :: (Prelude.Maybe (Value Prelude.Integer))}
mkWorkspacePropertiesProperty :: WorkspacePropertiesProperty
mkWorkspacePropertiesProperty
  = WorkspacePropertiesProperty
      {computeTypeName = Prelude.Nothing,
       rootVolumeSizeGib = Prelude.Nothing, runningMode = Prelude.Nothing,
       runningModeAutoStopTimeoutInMinutes = Prelude.Nothing,
       userVolumeSizeGib = Prelude.Nothing}
instance ToResourceProperties WorkspacePropertiesProperty where
  toResourceProperties WorkspacePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpaces::Workspace.WorkspaceProperties",
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