module Stratosphere.KinesisFirehose.DeliveryStream.ElasticsearchBufferingHintsProperty (
        ElasticsearchBufferingHintsProperty(..),
        mkElasticsearchBufferingHintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticsearchBufferingHintsProperty
  = ElasticsearchBufferingHintsProperty {intervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                         sizeInMBs :: (Prelude.Maybe (Value Prelude.Integer))}
mkElasticsearchBufferingHintsProperty ::
  ElasticsearchBufferingHintsProperty
mkElasticsearchBufferingHintsProperty
  = ElasticsearchBufferingHintsProperty
      {intervalInSeconds = Prelude.Nothing, sizeInMBs = Prelude.Nothing}
instance ToResourceProperties ElasticsearchBufferingHintsProperty where
  toResourceProperties ElasticsearchBufferingHintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.ElasticsearchBufferingHints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
                            (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs])}
instance JSON.ToJSON ElasticsearchBufferingHintsProperty where
  toJSON ElasticsearchBufferingHintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
               (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs]))
instance Property "IntervalInSeconds" ElasticsearchBufferingHintsProperty where
  type PropertyType "IntervalInSeconds" ElasticsearchBufferingHintsProperty = Value Prelude.Integer
  set newValue ElasticsearchBufferingHintsProperty {..}
    = ElasticsearchBufferingHintsProperty
        {intervalInSeconds = Prelude.pure newValue, ..}
instance Property "SizeInMBs" ElasticsearchBufferingHintsProperty where
  type PropertyType "SizeInMBs" ElasticsearchBufferingHintsProperty = Value Prelude.Integer
  set newValue ElasticsearchBufferingHintsProperty {..}
    = ElasticsearchBufferingHintsProperty
        {sizeInMBs = Prelude.pure newValue, ..}