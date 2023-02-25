module Stratosphere.KinesisFirehose.DeliveryStream.OrcSerDeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OrcSerDeProperty :: Prelude.Type
instance ToResourceProperties OrcSerDeProperty
instance JSON.ToJSON OrcSerDeProperty