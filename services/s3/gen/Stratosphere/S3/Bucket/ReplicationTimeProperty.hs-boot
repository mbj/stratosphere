module Stratosphere.S3.Bucket.ReplicationTimeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReplicationTimeProperty :: Prelude.Type
instance ToResourceProperties ReplicationTimeProperty
instance Prelude.Eq ReplicationTimeProperty
instance Prelude.Show ReplicationTimeProperty
instance JSON.ToJSON ReplicationTimeProperty