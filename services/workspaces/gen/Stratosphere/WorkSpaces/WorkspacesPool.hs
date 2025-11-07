module Stratosphere.WorkSpaces.WorkspacesPool (
        module Exports, WorkspacesPool(..), mkWorkspacesPool
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpaces.WorkspacesPool.ApplicationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkSpaces.WorkspacesPool.CapacityProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkSpaces.WorkspacesPool.TimeoutSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkspacesPool
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspacespool.html>
    WorkspacesPool {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspacespool.html#cfn-workspaces-workspacespool-applicationsettings>
                    applicationSettings :: (Prelude.Maybe ApplicationSettingsProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspacespool.html#cfn-workspaces-workspacespool-bundleid>
                    bundleId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspacespool.html#cfn-workspaces-workspacespool-capacity>
                    capacity :: CapacityProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspacespool.html#cfn-workspaces-workspacespool-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspacespool.html#cfn-workspaces-workspacespool-directoryid>
                    directoryId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspacespool.html#cfn-workspaces-workspacespool-poolname>
                    poolName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspacespool.html#cfn-workspaces-workspacespool-runningmode>
                    runningMode :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspaces-workspacespool.html#cfn-workspaces-workspacespool-timeoutsettings>
                    timeoutSettings :: (Prelude.Maybe TimeoutSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkspacesPool ::
  Value Prelude.Text
  -> CapacityProperty
     -> Value Prelude.Text -> Value Prelude.Text -> WorkspacesPool
mkWorkspacesPool bundleId capacity directoryId poolName
  = WorkspacesPool
      {haddock_workaround_ = (), bundleId = bundleId,
       capacity = capacity, directoryId = directoryId,
       poolName = poolName, applicationSettings = Prelude.Nothing,
       description = Prelude.Nothing, runningMode = Prelude.Nothing,
       timeoutSettings = Prelude.Nothing}
instance ToResourceProperties WorkspacesPool where
  toResourceProperties WorkspacesPool {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpaces::WorkspacesPool",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BundleId" JSON..= bundleId, "Capacity" JSON..= capacity,
                            "DirectoryId" JSON..= directoryId, "PoolName" JSON..= poolName]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationSettings" Prelude.<$> applicationSettings,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "RunningMode" Prelude.<$> runningMode,
                               (JSON..=) "TimeoutSettings" Prelude.<$> timeoutSettings]))}
instance JSON.ToJSON WorkspacesPool where
  toJSON WorkspacesPool {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BundleId" JSON..= bundleId, "Capacity" JSON..= capacity,
               "DirectoryId" JSON..= directoryId, "PoolName" JSON..= poolName]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationSettings" Prelude.<$> applicationSettings,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "RunningMode" Prelude.<$> runningMode,
                  (JSON..=) "TimeoutSettings" Prelude.<$> timeoutSettings])))
instance Property "ApplicationSettings" WorkspacesPool where
  type PropertyType "ApplicationSettings" WorkspacesPool = ApplicationSettingsProperty
  set newValue WorkspacesPool {..}
    = WorkspacesPool {applicationSettings = Prelude.pure newValue, ..}
instance Property "BundleId" WorkspacesPool where
  type PropertyType "BundleId" WorkspacesPool = Value Prelude.Text
  set newValue WorkspacesPool {..}
    = WorkspacesPool {bundleId = newValue, ..}
instance Property "Capacity" WorkspacesPool where
  type PropertyType "Capacity" WorkspacesPool = CapacityProperty
  set newValue WorkspacesPool {..}
    = WorkspacesPool {capacity = newValue, ..}
instance Property "Description" WorkspacesPool where
  type PropertyType "Description" WorkspacesPool = Value Prelude.Text
  set newValue WorkspacesPool {..}
    = WorkspacesPool {description = Prelude.pure newValue, ..}
instance Property "DirectoryId" WorkspacesPool where
  type PropertyType "DirectoryId" WorkspacesPool = Value Prelude.Text
  set newValue WorkspacesPool {..}
    = WorkspacesPool {directoryId = newValue, ..}
instance Property "PoolName" WorkspacesPool where
  type PropertyType "PoolName" WorkspacesPool = Value Prelude.Text
  set newValue WorkspacesPool {..}
    = WorkspacesPool {poolName = newValue, ..}
instance Property "RunningMode" WorkspacesPool where
  type PropertyType "RunningMode" WorkspacesPool = Value Prelude.Text
  set newValue WorkspacesPool {..}
    = WorkspacesPool {runningMode = Prelude.pure newValue, ..}
instance Property "TimeoutSettings" WorkspacesPool where
  type PropertyType "TimeoutSettings" WorkspacesPool = TimeoutSettingsProperty
  set newValue WorkspacesPool {..}
    = WorkspacesPool {timeoutSettings = Prelude.pure newValue, ..}