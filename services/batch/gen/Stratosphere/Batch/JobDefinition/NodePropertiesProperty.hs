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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html>
    NodePropertiesProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-mainnode>
                            mainNode :: (Value Prelude.Integer),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-noderangeproperties>
                            nodeRangeProperties :: [NodeRangePropertyProperty],
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-numnodes>
                            numNodes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodePropertiesProperty ::
  Value Prelude.Integer
  -> [NodeRangePropertyProperty]
     -> Value Prelude.Integer -> NodePropertiesProperty
mkNodePropertiesProperty mainNode nodeRangeProperties numNodes
  = NodePropertiesProperty
      {haddock_workaround_ = (), mainNode = mainNode,
       nodeRangeProperties = nodeRangeProperties, numNodes = numNodes}
instance ToResourceProperties NodePropertiesProperty where
  toResourceProperties NodePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.NodeProperties",
         supportsTags = Prelude.False,
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