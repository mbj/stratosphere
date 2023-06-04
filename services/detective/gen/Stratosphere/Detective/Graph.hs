module Stratosphere.Detective.Graph (
        Graph(..), mkGraph
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Graph
  = Graph {autoEnableMembers :: (Prelude.Maybe (Value Prelude.Bool)),
           tags :: (Prelude.Maybe [Tag])}
mkGraph :: Graph
mkGraph
  = Graph
      {autoEnableMembers = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Graph where
  toResourceProperties Graph {..}
    = ResourceProperties
        {awsType = "AWS::Detective::Graph", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoEnableMembers" Prelude.<$> autoEnableMembers,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Graph where
  toJSON Graph {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoEnableMembers" Prelude.<$> autoEnableMembers,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AutoEnableMembers" Graph where
  type PropertyType "AutoEnableMembers" Graph = Value Prelude.Bool
  set newValue Graph {..}
    = Graph {autoEnableMembers = Prelude.pure newValue, ..}
instance Property "Tags" Graph where
  type PropertyType "Tags" Graph = [Tag]
  set newValue Graph {..} = Graph {tags = Prelude.pure newValue, ..}