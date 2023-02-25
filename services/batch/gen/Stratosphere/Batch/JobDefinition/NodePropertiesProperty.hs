module Stratosphere.Batch.JobDefinition.NodePropertiesProperty (
        module Exports, NodePropertiesProperty(..),
        mkNodePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.NodeRangePropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodePropertiesProperty
  = NodePropertiesProperty {mainNode :: (Value Prelude.Integer),
                            nodeRangeProperties :: [NodeRangePropertyProperty],
                            numNodes :: (Value Prelude.Integer)}
mkNodePropertiesProperty ::
  Value Prelude.Integer
  -> [NodeRangePropertyProperty]
     -> Value Prelude.Integer -> NodePropertiesProperty
mkNodePropertiesProperty mainNode nodeRangeProperties numNodes
  = NodePropertiesProperty
      {mainNode = mainNode, nodeRangeProperties = nodeRangeProperties,
       numNodes = numNodes}
instance ToResourceProperties NodePropertiesProperty where
  toResourceProperties NodePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.NodeProperties",
         properties = ["MainNode" JSON..= mainNode,
                       "NodeRangeProperties" JSON..= nodeRangeProperties,
                       "NumNodes" JSON..= numNodes]}
instance JSON.ToJSON NodePropertiesProperty where
  toJSON NodePropertiesProperty {..}
    = JSON.object
        ["MainNode" JSON..= mainNode,
         "NodeRangeProperties" JSON..= nodeRangeProperties,
         "NumNodes" JSON..= numNodes]
instance Property "MainNode" NodePropertiesProperty where
  type PropertyType "MainNode" NodePropertiesProperty = Value Prelude.Integer
  set newValue NodePropertiesProperty {..}
    = NodePropertiesProperty {mainNode = newValue, ..}
instance Property "NodeRangeProperties" NodePropertiesProperty where
  type PropertyType "NodeRangeProperties" NodePropertiesProperty = [NodeRangePropertyProperty]
  set newValue NodePropertiesProperty {..}
    = NodePropertiesProperty {nodeRangeProperties = newValue, ..}
instance Property "NumNodes" NodePropertiesProperty where
  type PropertyType "NumNodes" NodePropertiesProperty = Value Prelude.Integer
  set newValue NodePropertiesProperty {..}
    = NodePropertiesProperty {numNodes = newValue, ..}