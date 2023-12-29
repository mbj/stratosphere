module Stratosphere.KafkaConnect.Connector.LogDeliveryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogDeliveryProperty :: Prelude.Type
instance ToResourceProperties LogDeliveryProperty
instance Prelude.Eq LogDeliveryProperty
instance Prelude.Show LogDeliveryProperty
instance JSON.ToJSON LogDeliveryProperty