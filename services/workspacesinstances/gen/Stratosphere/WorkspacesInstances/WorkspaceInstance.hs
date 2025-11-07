module Stratosphere.WorkspacesInstances.WorkspaceInstance (
        module Exports, WorkspaceInstance(..), mkWorkspaceInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.ManagedInstanceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data WorkspaceInstance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-workspaceinstance.html>
    WorkspaceInstance {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-workspaceinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance>
                       managedInstance :: (Prelude.Maybe ManagedInstanceProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-workspaceinstance.html#cfn-workspacesinstances-workspaceinstance-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkspaceInstance :: WorkspaceInstance
mkWorkspaceInstance
  = WorkspaceInstance
      {haddock_workaround_ = (), managedInstance = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties WorkspaceInstance where
  toResourceProperties WorkspaceInstance {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ManagedInstance" Prelude.<$> managedInstance,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON WorkspaceInstance where
  toJSON WorkspaceInstance {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ManagedInstance" Prelude.<$> managedInstance,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ManagedInstance" WorkspaceInstance where
  type PropertyType "ManagedInstance" WorkspaceInstance = ManagedInstanceProperty
  set newValue WorkspaceInstance {..}
    = WorkspaceInstance {managedInstance = Prelude.pure newValue, ..}
instance Property "Tags" WorkspaceInstance where
  type PropertyType "Tags" WorkspaceInstance = [Tag]
  set newValue WorkspaceInstance {..}
    = WorkspaceInstance {tags = Prelude.pure newValue, ..}