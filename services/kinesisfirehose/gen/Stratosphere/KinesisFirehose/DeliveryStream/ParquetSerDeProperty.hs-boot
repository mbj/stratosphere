module Stratosphere.KinesisFirehose.DeliveryStream.ParquetSerDeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParquetSerDeProperty :: Prelude.Type
instance ToResourceProperties ParquetSerDeProperty
instance JSON.ToJSON ParquetSerDeProperty