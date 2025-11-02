module Stratosphere.ManagedBlockchain.Node.NodeConfigurationProperty (
        NodeConfigurationProperty(..), mkNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html>
    NodeConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html#cfn-managedblockchain-node-nodeconfiguration-availabilityzone>
                               availabilityZone :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html#cfn-managedblockchain-node-nodeconfiguration-instancetype>
                               instanceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodeConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> NodeConfigurationProperty
mkNodeConfigurationProperty availabilityZone instanceType
  = NodeConfigurationProperty
      {haddock_workaround_ = (), availabilityZone = availabilityZone,
       instanceType = instanceType}
instance ToResourceProperties NodeConfigurationProperty where
  toResourceProperties NodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Node.NodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["AvailabilityZone" JSON..= availabilityZone,
                       "InstanceType" JSON..= instanceType]}
instance JSON.ToJSON NodeConfigurationProperty where
  toJSON NodeConfigurationProperty {..}
    = JSON.object
        ["AvailabilityZone" JSON..= availabilityZone,
         "InstanceType" JSON..= instanceType]
instance Property "AvailabilityZone" NodeConfigurationProperty where
  type PropertyType "AvailabilityZone" NodeConfigurationProperty = Value Prelude.Text
  set newValue NodeConfigurationProperty {..}
    = NodeConfigurationProperty {availabilityZone = newValue, ..}
instance Property "InstanceType" NodeConfigurationProperty where
  type PropertyType "InstanceType" NodeConfigurationProperty = Value Prelude.Text
  set newValue NodeConfigurationProperty {..}
    = NodeConfigurationProperty {instanceType = newValue, ..}