module Stratosphere.EKS.Cluster.ComputeConfigProperty (
        ComputeConfigProperty(..), mkComputeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-computeconfig.html>
    ComputeConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-computeconfig.html#cfn-eks-cluster-computeconfig-enabled>
                           enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-computeconfig.html#cfn-eks-cluster-computeconfig-nodepools>
                           nodePools :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-computeconfig.html#cfn-eks-cluster-computeconfig-noderolearn>
                           nodeRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeConfigProperty :: ComputeConfigProperty
mkComputeConfigProperty
  = ComputeConfigProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       nodePools = Prelude.Nothing, nodeRoleArn = Prelude.Nothing}
instance ToResourceProperties ComputeConfigProperty where
  toResourceProperties ComputeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.ComputeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "NodePools" Prelude.<$> nodePools,
                            (JSON..=) "NodeRoleArn" Prelude.<$> nodeRoleArn])}
instance JSON.ToJSON ComputeConfigProperty where
  toJSON ComputeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "NodePools" Prelude.<$> nodePools,
               (JSON..=) "NodeRoleArn" Prelude.<$> nodeRoleArn]))
instance Property "Enabled" ComputeConfigProperty where
  type PropertyType "Enabled" ComputeConfigProperty = Value Prelude.Bool
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty {enabled = Prelude.pure newValue, ..}
instance Property "NodePools" ComputeConfigProperty where
  type PropertyType "NodePools" ComputeConfigProperty = ValueList Prelude.Text
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty {nodePools = Prelude.pure newValue, ..}
instance Property "NodeRoleArn" ComputeConfigProperty where
  type PropertyType "NodeRoleArn" ComputeConfigProperty = Value Prelude.Text
  set newValue ComputeConfigProperty {..}
    = ComputeConfigProperty {nodeRoleArn = Prelude.pure newValue, ..}