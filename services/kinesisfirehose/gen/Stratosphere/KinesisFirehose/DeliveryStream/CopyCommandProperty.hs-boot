module Stratosphere.KinesisFirehose.DeliveryStream.CopyCommandProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CopyCommandProperty :: Prelude.Type
instance ToResourceProperties CopyCommandProperty
instance JSON.ToJSON CopyCommandProperty