module Stratosphere.Lex.Bot.ReplicationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReplicationProperty :: Prelude.Type
instance ToResourceProperties ReplicationProperty
instance Prelude.Eq ReplicationProperty
instance Prelude.Show ReplicationProperty
instance JSON.ToJSON ReplicationProperty