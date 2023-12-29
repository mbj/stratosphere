module Stratosphere.S3.Bucket.ReplicationRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReplicationRuleProperty :: Prelude.Type
instance ToResourceProperties ReplicationRuleProperty
instance Prelude.Eq ReplicationRuleProperty
instance Prelude.Show ReplicationRuleProperty
instance JSON.ToJSON ReplicationRuleProperty