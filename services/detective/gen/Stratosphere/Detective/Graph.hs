module Stratosphere.Detective.Graph (
        Graph(..), mkGraph
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data Graph = Graph {tags :: (Prelude.Maybe [Tag])}
mkGraph :: Graph
mkGraph = Graph {tags = Prelude.Nothing}
instance ToResourceProperties Graph where
  toResourceProperties Graph {..}
    = ResourceProperties
        {awsType = "AWS::Detective::Graph", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Graph where
  toJSON Graph {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Tags" Graph where
  type PropertyType "Tags" Graph = [Tag]
  set newValue Graph {} = Graph {tags = Prelude.pure newValue, ..}