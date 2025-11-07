module Stratosphere.ARCRegionSwitch.Plan.EksClusterProperty (
        EksClusterProperty(..), mkEksClusterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksClusterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ekscluster.html>
    EksClusterProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ekscluster.html#cfn-arcregionswitch-plan-ekscluster-clusterarn>
                        clusterArn :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ekscluster.html#cfn-arcregionswitch-plan-ekscluster-crossaccountrole>
                        crossAccountRole :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-ekscluster.html#cfn-arcregionswitch-plan-ekscluster-externalid>
                        externalId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksClusterProperty :: Value Prelude.Text -> EksClusterProperty
mkEksClusterProperty clusterArn
  = EksClusterProperty
      {haddock_workaround_ = (), clusterArn = clusterArn,
       crossAccountRole = Prelude.Nothing, externalId = Prelude.Nothing}
instance ToResourceProperties EksClusterProperty where
  toResourceProperties EksClusterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.EksCluster",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterArn" JSON..= clusterArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                               (JSON..=) "ExternalId" Prelude.<$> externalId]))}
instance JSON.ToJSON EksClusterProperty where
  toJSON EksClusterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterArn" JSON..= clusterArn]
              (Prelude.catMaybes
                 [(JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                  (JSON..=) "ExternalId" Prelude.<$> externalId])))
instance Property "ClusterArn" EksClusterProperty where
  type PropertyType "ClusterArn" EksClusterProperty = Value Prelude.Text
  set newValue EksClusterProperty {..}
    = EksClusterProperty {clusterArn = newValue, ..}
instance Property "CrossAccountRole" EksClusterProperty where
  type PropertyType "CrossAccountRole" EksClusterProperty = Value Prelude.Text
  set newValue EksClusterProperty {..}
    = EksClusterProperty {crossAccountRole = Prelude.pure newValue, ..}
instance Property "ExternalId" EksClusterProperty where
  type PropertyType "ExternalId" EksClusterProperty = Value Prelude.Text
  set newValue EksClusterProperty {..}
    = EksClusterProperty {externalId = Prelude.pure newValue, ..}