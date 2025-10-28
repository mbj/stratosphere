module Stratosphere.ManagedBlockchain.Node (
        module Exports, Node(..), mkNode
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ManagedBlockchain.Node.NodeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Node
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html>
    Node {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-memberid>
          memberId :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-networkid>
          networkId :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-nodeconfiguration>
          nodeConfiguration :: NodeConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNode :: Value Prelude.Text -> NodeConfigurationProperty -> Node
mkNode networkId nodeConfiguration
  = Node
      {haddock_workaround_ = (), networkId = networkId,
       nodeConfiguration = nodeConfiguration, memberId = Prelude.Nothing}
instance ToResourceProperties Node where
  toResourceProperties Node {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Node",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NetworkId" JSON..= networkId,
                            "NodeConfiguration" JSON..= nodeConfiguration]
                           (Prelude.catMaybes [(JSON..=) "MemberId" Prelude.<$> memberId]))}
instance JSON.ToJSON Node where
  toJSON Node {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NetworkId" JSON..= networkId,
               "NodeConfiguration" JSON..= nodeConfiguration]
              (Prelude.catMaybes [(JSON..=) "MemberId" Prelude.<$> memberId])))
instance Property "MemberId" Node where
  type PropertyType "MemberId" Node = Value Prelude.Text
  set newValue Node {..}
    = Node {memberId = Prelude.pure newValue, ..}
instance Property "NetworkId" Node where
  type PropertyType "NetworkId" Node = Value Prelude.Text
  set newValue Node {..} = Node {networkId = newValue, ..}
instance Property "NodeConfiguration" Node where
  type PropertyType "NodeConfiguration" Node = NodeConfigurationProperty
  set newValue Node {..} = Node {nodeConfiguration = newValue, ..}