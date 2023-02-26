module Stratosphere.KinesisFirehose.DeliveryStream.HiveJsonSerDeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HiveJsonSerDeProperty :: Prelude.Type
instance ToResourceProperties HiveJsonSerDeProperty
instance JSON.ToJSON HiveJsonSerDeProperty