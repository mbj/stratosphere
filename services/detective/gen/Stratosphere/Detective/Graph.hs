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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-graph.html>
    Graph {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-graph.html#cfn-detective-graph-autoenablemembers>
           autoEnableMembers :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-graph.html#cfn-detective-graph-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGraph :: Graph
mkGraph
  = Graph
      {haddock_workaround_ = (), autoEnableMembers = Prelude.Nothing,
       tags = Prelude.Nothing}
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