module Stratosphere.NeptuneGraph.Graph (
        module Exports, Graph(..), mkGraph
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NeptuneGraph.Graph.VectorSearchConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Graph
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptunegraph-graph.html>
    Graph {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptunegraph-graph.html#cfn-neptunegraph-graph-deletionprotection>
           deletionProtection :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptunegraph-graph.html#cfn-neptunegraph-graph-graphname>
           graphName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptunegraph-graph.html#cfn-neptunegraph-graph-provisionedmemory>
           provisionedMemory :: (Value Prelude.Integer),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptunegraph-graph.html#cfn-neptunegraph-graph-publicconnectivity>
           publicConnectivity :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptunegraph-graph.html#cfn-neptunegraph-graph-replicacount>
           replicaCount :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptunegraph-graph.html#cfn-neptunegraph-graph-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptunegraph-graph.html#cfn-neptunegraph-graph-vectorsearchconfiguration>
           vectorSearchConfiguration :: (Prelude.Maybe VectorSearchConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGraph :: Value Prelude.Integer -> Graph
mkGraph provisionedMemory
  = Graph
      {haddock_workaround_ = (), provisionedMemory = provisionedMemory,
       deletionProtection = Prelude.Nothing, graphName = Prelude.Nothing,
       publicConnectivity = Prelude.Nothing,
       replicaCount = Prelude.Nothing, tags = Prelude.Nothing,
       vectorSearchConfiguration = Prelude.Nothing}
instance ToResourceProperties Graph where
  toResourceProperties Graph {..}
    = ResourceProperties
        {awsType = "AWS::NeptuneGraph::Graph", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProvisionedMemory" JSON..= provisionedMemory]
                           (Prelude.catMaybes
                              [(JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                               (JSON..=) "GraphName" Prelude.<$> graphName,
                               (JSON..=) "PublicConnectivity" Prelude.<$> publicConnectivity,
                               (JSON..=) "ReplicaCount" Prelude.<$> replicaCount,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VectorSearchConfiguration"
                                 Prelude.<$> vectorSearchConfiguration]))}
instance JSON.ToJSON Graph where
  toJSON Graph {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProvisionedMemory" JSON..= provisionedMemory]
              (Prelude.catMaybes
                 [(JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                  (JSON..=) "GraphName" Prelude.<$> graphName,
                  (JSON..=) "PublicConnectivity" Prelude.<$> publicConnectivity,
                  (JSON..=) "ReplicaCount" Prelude.<$> replicaCount,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VectorSearchConfiguration"
                    Prelude.<$> vectorSearchConfiguration])))
instance Property "DeletionProtection" Graph where
  type PropertyType "DeletionProtection" Graph = Value Prelude.Bool
  set newValue Graph {..}
    = Graph {deletionProtection = Prelude.pure newValue, ..}
instance Property "GraphName" Graph where
  type PropertyType "GraphName" Graph = Value Prelude.Text
  set newValue Graph {..}
    = Graph {graphName = Prelude.pure newValue, ..}
instance Property "ProvisionedMemory" Graph where
  type PropertyType "ProvisionedMemory" Graph = Value Prelude.Integer
  set newValue Graph {..} = Graph {provisionedMemory = newValue, ..}
instance Property "PublicConnectivity" Graph where
  type PropertyType "PublicConnectivity" Graph = Value Prelude.Bool
  set newValue Graph {..}
    = Graph {publicConnectivity = Prelude.pure newValue, ..}
instance Property "ReplicaCount" Graph where
  type PropertyType "ReplicaCount" Graph = Value Prelude.Integer
  set newValue Graph {..}
    = Graph {replicaCount = Prelude.pure newValue, ..}
instance Property "Tags" Graph where
  type PropertyType "Tags" Graph = [Tag]
  set newValue Graph {..} = Graph {tags = Prelude.pure newValue, ..}
instance Property "VectorSearchConfiguration" Graph where
  type PropertyType "VectorSearchConfiguration" Graph = VectorSearchConfigurationProperty
  set newValue Graph {..}
    = Graph {vectorSearchConfiguration = Prelude.pure newValue, ..}