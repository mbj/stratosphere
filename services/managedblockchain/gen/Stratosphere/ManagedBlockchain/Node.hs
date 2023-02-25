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
  = Node {memberId :: (Prelude.Maybe (Value Prelude.Text)),
          networkId :: (Value Prelude.Text),
          nodeConfiguration :: NodeConfigurationProperty}
mkNode :: Value Prelude.Text -> NodeConfigurationProperty -> Node
mkNode networkId nodeConfiguration
  = Node
      {networkId = networkId, nodeConfiguration = nodeConfiguration,
       memberId = Prelude.Nothing}
instance ToResourceProperties Node where
  toResourceProperties Node {..}
    = ResourceProperties
        {awsType = "AWS::ManagedBlockchain::Node",
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