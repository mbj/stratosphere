module Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceNetworkPerformanceOptionsRequestProperty (
        InstanceNetworkPerformanceOptionsRequestProperty(..),
        mkInstanceNetworkPerformanceOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceNetworkPerformanceOptionsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancenetworkperformanceoptionsrequest.html>
    InstanceNetworkPerformanceOptionsRequestProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-instancenetworkperformanceoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-instancenetworkperformanceoptionsrequest-bandwidthweighting>
                                                      bandwidthWeighting :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceNetworkPerformanceOptionsRequestProperty ::
  InstanceNetworkPerformanceOptionsRequestProperty
mkInstanceNetworkPerformanceOptionsRequestProperty
  = InstanceNetworkPerformanceOptionsRequestProperty
      {haddock_workaround_ = (), bandwidthWeighting = Prelude.Nothing}
instance ToResourceProperties InstanceNetworkPerformanceOptionsRequestProperty where
  toResourceProperties
    InstanceNetworkPerformanceOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.InstanceNetworkPerformanceOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BandwidthWeighting" Prelude.<$> bandwidthWeighting])}
instance JSON.ToJSON InstanceNetworkPerformanceOptionsRequestProperty where
  toJSON InstanceNetworkPerformanceOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BandwidthWeighting" Prelude.<$> bandwidthWeighting]))
instance Property "BandwidthWeighting" InstanceNetworkPerformanceOptionsRequestProperty where
  type PropertyType "BandwidthWeighting" InstanceNetworkPerformanceOptionsRequestProperty = Value Prelude.Text
  set newValue InstanceNetworkPerformanceOptionsRequestProperty {..}
    = InstanceNetworkPerformanceOptionsRequestProperty
        {bandwidthWeighting = Prelude.pure newValue, ..}