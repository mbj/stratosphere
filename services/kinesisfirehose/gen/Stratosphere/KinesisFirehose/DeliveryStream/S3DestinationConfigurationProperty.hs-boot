module Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3DestinationConfigurationProperty :: Prelude.Type
instance ToResourceProperties S3DestinationConfigurationProperty
instance JSON.ToJSON S3DestinationConfigurationProperty