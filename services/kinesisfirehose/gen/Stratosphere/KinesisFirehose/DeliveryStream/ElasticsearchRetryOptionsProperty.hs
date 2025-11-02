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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html>
    ElasticsearchRetryOptionsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html#cfn-kinesisfirehose-deliverystream-elasticsearchretryoptions-durationinseconds>
                                       durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticsearchRetryOptionsProperty ::
  ElasticsearchRetryOptionsProperty
mkElasticsearchRetryOptionsProperty
  = ElasticsearchRetryOptionsProperty
      {haddock_workaround_ = (), durationInSeconds = Prelude.Nothing}
instance ToResourceProperties ElasticsearchRetryOptionsProperty where
  toResourceProperties ElasticsearchRetryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions",
         supportsTags = Prelude.False,
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
  set newValue ElasticsearchRetryOptionsProperty {..}
    = ElasticsearchRetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}