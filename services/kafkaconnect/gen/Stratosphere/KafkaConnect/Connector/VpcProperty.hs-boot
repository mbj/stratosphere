module Stratosphere.KafkaConnect.Connector.VpcProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VpcProperty :: Prelude.Type
instance ToResourceProperties VpcProperty
instance Prelude.Eq VpcProperty
instance Prelude.Show VpcProperty
instance JSON.ToJSON VpcProperty