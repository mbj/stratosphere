module Stratosphere.KafkaConnect.Connector.S3LogDeliveryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3LogDeliveryProperty :: Prelude.Type
instance ToResourceProperties S3LogDeliveryProperty
instance JSON.ToJSON S3LogDeliveryProperty