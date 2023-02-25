module Stratosphere.QLDB.Stream.KinesisConfigurationProperty (
        KinesisConfigurationProperty(..), mkKinesisConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisConfigurationProperty
  = KinesisConfigurationProperty {aggregationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                  streamArn :: (Prelude.Maybe (Value Prelude.Text))}
mkKinesisConfigurationProperty :: KinesisConfigurationProperty
mkKinesisConfigurationProperty
  = KinesisConfigurationProperty
      {aggregationEnabled = Prelude.Nothing, streamArn = Prelude.Nothing}
instance ToResourceProperties KinesisConfigurationProperty where
  toResourceProperties KinesisConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QLDB::Stream.KinesisConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AggregationEnabled" Prelude.<$> aggregationEnabled,
                            (JSON..=) "StreamArn" Prelude.<$> streamArn])}
instance JSON.ToJSON KinesisConfigurationProperty where
  toJSON KinesisConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AggregationEnabled" Prelude.<$> aggregationEnabled,
               (JSON..=) "StreamArn" Prelude.<$> streamArn]))
instance Property "AggregationEnabled" KinesisConfigurationProperty where
  type PropertyType "AggregationEnabled" KinesisConfigurationProperty = Value Prelude.Bool
  set newValue KinesisConfigurationProperty {..}
    = KinesisConfigurationProperty
        {aggregationEnabled = Prelude.pure newValue, ..}
instance Property "StreamArn" KinesisConfigurationProperty where
  type PropertyType "StreamArn" KinesisConfigurationProperty = Value Prelude.Text
  set newValue KinesisConfigurationProperty {..}
    = KinesisConfigurationProperty
        {streamArn = Prelude.pure newValue, ..}