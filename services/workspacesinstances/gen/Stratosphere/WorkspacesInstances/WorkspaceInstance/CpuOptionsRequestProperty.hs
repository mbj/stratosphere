module Stratosphere.WorkspacesInstances.WorkspaceInstance.CpuOptionsRequestProperty (
        CpuOptionsRequestProperty(..), mkCpuOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CpuOptionsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-cpuoptionsrequest.html>
    CpuOptionsRequestProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-cpuoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-cpuoptionsrequest-corecount>
                               coreCount :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-cpuoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-cpuoptionsrequest-threadspercore>
                               threadsPerCore :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCpuOptionsRequestProperty :: CpuOptionsRequestProperty
mkCpuOptionsRequestProperty
  = CpuOptionsRequestProperty
      {haddock_workaround_ = (), coreCount = Prelude.Nothing,
       threadsPerCore = Prelude.Nothing}
instance ToResourceProperties CpuOptionsRequestProperty where
  toResourceProperties CpuOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.CpuOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CoreCount" Prelude.<$> coreCount,
                            (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore])}
instance JSON.ToJSON CpuOptionsRequestProperty where
  toJSON CpuOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CoreCount" Prelude.<$> coreCount,
               (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore]))
instance Property "CoreCount" CpuOptionsRequestProperty where
  type PropertyType "CoreCount" CpuOptionsRequestProperty = Value Prelude.Integer
  set newValue CpuOptionsRequestProperty {..}
    = CpuOptionsRequestProperty {coreCount = Prelude.pure newValue, ..}
instance Property "ThreadsPerCore" CpuOptionsRequestProperty where
  type PropertyType "ThreadsPerCore" CpuOptionsRequestProperty = Value Prelude.Integer
  set newValue CpuOptionsRequestProperty {..}
    = CpuOptionsRequestProperty
        {threadsPerCore = Prelude.pure newValue, ..}