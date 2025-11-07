module Stratosphere.PCS.Cluster.NetworkingProperty (
        NetworkingProperty(..), mkNetworkingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-networking.html>
    NetworkingProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-networking.html#cfn-pcs-cluster-networking-networktype>
                        networkType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-networking.html#cfn-pcs-cluster-networking-securitygroupids>
                        securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-networking.html#cfn-pcs-cluster-networking-subnetids>
                        subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkingProperty :: NetworkingProperty
mkNetworkingProperty
  = NetworkingProperty
      {haddock_workaround_ = (), networkType = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing}
instance ToResourceProperties NetworkingProperty where
  toResourceProperties NetworkingProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Cluster.Networking",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetworkType" Prelude.<$> networkType,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON NetworkingProperty where
  toJSON NetworkingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetworkType" Prelude.<$> networkType,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "NetworkType" NetworkingProperty where
  type PropertyType "NetworkType" NetworkingProperty = Value Prelude.Text
  set newValue NetworkingProperty {..}
    = NetworkingProperty {networkType = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" NetworkingProperty where
  type PropertyType "SecurityGroupIds" NetworkingProperty = ValueList Prelude.Text
  set newValue NetworkingProperty {..}
    = NetworkingProperty {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" NetworkingProperty where
  type PropertyType "SubnetIds" NetworkingProperty = ValueList Prelude.Text
  set newValue NetworkingProperty {..}
    = NetworkingProperty {subnetIds = Prelude.pure newValue, ..}