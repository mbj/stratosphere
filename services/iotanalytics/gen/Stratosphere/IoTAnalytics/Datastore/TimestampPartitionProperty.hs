module Stratosphere.IoTAnalytics.Datastore.TimestampPartitionProperty (
        TimestampPartitionProperty(..), mkTimestampPartitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestampPartitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-timestamppartition.html>
    TimestampPartitionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-timestamppartition.html#cfn-iotanalytics-datastore-timestamppartition-attributename>
                                attributeName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-timestamppartition.html#cfn-iotanalytics-datastore-timestamppartition-timestampformat>
                                timestampFormat :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimestampPartitionProperty ::
  Value Prelude.Text -> TimestampPartitionProperty
mkTimestampPartitionProperty attributeName
  = TimestampPartitionProperty
      {haddock_workaround_ = (), attributeName = attributeName,
       timestampFormat = Prelude.Nothing}
instance ToResourceProperties TimestampPartitionProperty where
  toResourceProperties TimestampPartitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.TimestampPartition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AttributeName" JSON..= attributeName]
                           (Prelude.catMaybes
                              [(JSON..=) "TimestampFormat" Prelude.<$> timestampFormat]))}
instance JSON.ToJSON TimestampPartitionProperty where
  toJSON TimestampPartitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AttributeName" JSON..= attributeName]
              (Prelude.catMaybes
                 [(JSON..=) "TimestampFormat" Prelude.<$> timestampFormat])))
instance Property "AttributeName" TimestampPartitionProperty where
  type PropertyType "AttributeName" TimestampPartitionProperty = Value Prelude.Text
  set newValue TimestampPartitionProperty {..}
    = TimestampPartitionProperty {attributeName = newValue, ..}
instance Property "TimestampFormat" TimestampPartitionProperty where
  type PropertyType "TimestampFormat" TimestampPartitionProperty = Value Prelude.Text
  set newValue TimestampPartitionProperty {..}
    = TimestampPartitionProperty
        {timestampFormat = Prelude.pure newValue, ..}