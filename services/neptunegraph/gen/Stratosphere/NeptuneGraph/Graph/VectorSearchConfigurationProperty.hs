module Stratosphere.NeptuneGraph.Graph.VectorSearchConfigurationProperty (
        VectorSearchConfigurationProperty(..),
        mkVectorSearchConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VectorSearchConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-neptunegraph-graph-vectorsearchconfiguration.html>
    VectorSearchConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-neptunegraph-graph-vectorsearchconfiguration.html#cfn-neptunegraph-graph-vectorsearchconfiguration-vectorsearchdimension>
                                       vectorSearchDimension :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVectorSearchConfigurationProperty ::
  Value Prelude.Integer -> VectorSearchConfigurationProperty
mkVectorSearchConfigurationProperty vectorSearchDimension
  = VectorSearchConfigurationProperty
      {haddock_workaround_ = (),
       vectorSearchDimension = vectorSearchDimension}
instance ToResourceProperties VectorSearchConfigurationProperty where
  toResourceProperties VectorSearchConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NeptuneGraph::Graph.VectorSearchConfiguration",
         supportsTags = Prelude.False,
         properties = ["VectorSearchDimension"
                         JSON..= vectorSearchDimension]}
instance JSON.ToJSON VectorSearchConfigurationProperty where
  toJSON VectorSearchConfigurationProperty {..}
    = JSON.object
        ["VectorSearchDimension" JSON..= vectorSearchDimension]
instance Property "VectorSearchDimension" VectorSearchConfigurationProperty where
  type PropertyType "VectorSearchDimension" VectorSearchConfigurationProperty = Value Prelude.Integer
  set newValue VectorSearchConfigurationProperty {..}
    = VectorSearchConfigurationProperty
        {vectorSearchDimension = newValue, ..}