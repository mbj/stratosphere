module Stratosphere.AmazonMQ.Broker.UserProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UserProperty :: Prelude.Type
instance ToResourceProperties UserProperty
instance Prelude.Eq UserProperty
instance Prelude.Show UserProperty
instance JSON.ToJSON UserProperty