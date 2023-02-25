module Stratosphere.KinesisFirehose.DeliveryStream.ElasticsearchRetryOptionsProperty (
        ElasticsearchRetryOptionsProperty(..),
        mkElasticsearchRetryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticsearchRetryOptionsProperty
  = ElasticsearchRetryOptionsProperty {durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkElasticsearchRetryOptionsProperty ::
  ElasticsearchRetryOptionsProperty
mkElasticsearchRetryOptionsProperty
  = ElasticsearchRetryOptionsProperty
      {durationInSeconds = Prelude.Nothing}
instance ToResourceProperties ElasticsearchRetryOptionsProperty where
  toResourceProperties ElasticsearchRetryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds])}
instance JSON.ToJSON ElasticsearchRetryOptionsProperty where
  toJSON ElasticsearchRetryOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds]))
instance Property "DurationInSeconds" ElasticsearchRetryOptionsProperty where
  type PropertyType "DurationInSeconds" ElasticsearchRetryOptionsProperty = Value Prelude.Integer
  set newValue ElasticsearchRetryOptionsProperty {}
    = ElasticsearchRetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}