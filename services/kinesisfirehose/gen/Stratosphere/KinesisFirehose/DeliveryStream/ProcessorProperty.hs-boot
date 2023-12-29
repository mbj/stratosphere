module Stratosphere.KinesisFirehose.DeliveryStream.ProcessorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProcessorProperty :: Prelude.Type
instance ToResourceProperties ProcessorProperty
instance Prelude.Eq ProcessorProperty
instance Prelude.Show ProcessorProperty
instance JSON.ToJSON ProcessorProperty