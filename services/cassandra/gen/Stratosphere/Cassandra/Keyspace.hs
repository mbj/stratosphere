module Stratosphere.Cassandra.Keyspace (
        Keyspace(..), mkKeyspace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Keyspace
  = Keyspace {keyspaceName :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyspace :: Keyspace
mkKeyspace
  = Keyspace {keyspaceName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Keyspace where
  toResourceProperties Keyspace {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Keyspace", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KeyspaceName" Prelude.<$> keyspaceName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Keyspace where
  toJSON Keyspace {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KeyspaceName" Prelude.<$> keyspaceName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "KeyspaceName" Keyspace where
  type PropertyType "KeyspaceName" Keyspace = Value Prelude.Text
  set newValue Keyspace {..}
    = Keyspace {keyspaceName = Prelude.pure newValue, ..}
instance Property "Tags" Keyspace where
  type PropertyType "Tags" Keyspace = [Tag]
  set newValue Keyspace {..}
    = Keyspace {tags = Prelude.pure newValue, ..}