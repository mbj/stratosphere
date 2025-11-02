module Stratosphere.QLDB.Stream.KinesisConfigurationProperty (
        KinesisConfigurationProperty(..), mkKinesisConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qldb-stream-kinesisconfiguration.html>
    KinesisConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qldb-stream-kinesisconfiguration.html#cfn-qldb-stream-kinesisconfiguration-aggregationenabled>
                                  aggregationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qldb-stream-kinesisconfiguration.html#cfn-qldb-stream-kinesisconfiguration-streamarn>
                                  streamArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisConfigurationProperty :: KinesisConfigurationProperty
mkKinesisConfigurationProperty
  = KinesisConfigurationProperty
      {haddock_workaround_ = (), aggregationEnabled = Prelude.Nothing,
       streamArn = Prelude.Nothing}
instance ToResourceProperties KinesisConfigurationProperty where
  toResourceProperties KinesisConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QLDB::Stream.KinesisConfiguration",
         supportsTags = Prelude.False,
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