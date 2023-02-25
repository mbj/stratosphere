module Stratosphere.KinesisFirehose.DeliveryStream.RetryOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RetryOptionsProperty :: Prelude.Type
instance ToResourceProperties RetryOptionsProperty
instance JSON.ToJSON RetryOptionsProperty