module Stratosphere.EC2.FlowLog.DestinationOptionsProperty (
        DestinationOptionsProperty(..), mkDestinationOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationOptionsProperty
  = DestinationOptionsProperty {fileFormat :: (Value Prelude.Text),
                                hiveCompatiblePartitions :: (Value Prelude.Bool),
                                perHourPartition :: (Value Prelude.Bool)}
mkDestinationOptionsProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool
     -> Value Prelude.Bool -> DestinationOptionsProperty
mkDestinationOptionsProperty
  fileFormat
  hiveCompatiblePartitions
  perHourPartition
  = DestinationOptionsProperty
      {fileFormat = fileFormat,
       hiveCompatiblePartitions = hiveCompatiblePartitions,
       perHourPartition = perHourPartition}
instance ToResourceProperties DestinationOptionsProperty where
  toResourceProperties DestinationOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::FlowLog.DestinationOptions",
         supportsTags = Prelude.False,
         properties = ["FileFormat" JSON..= fileFormat,
                       "HiveCompatiblePartitions" JSON..= hiveCompatiblePartitions,
                       "PerHourPartition" JSON..= perHourPartition]}
instance JSON.ToJSON DestinationOptionsProperty where
  toJSON DestinationOptionsProperty {..}
    = JSON.object
        ["FileFormat" JSON..= fileFormat,
         "HiveCompatiblePartitions" JSON..= hiveCompatiblePartitions,
         "PerHourPartition" JSON..= perHourPartition]
instance Property "FileFormat" DestinationOptionsProperty where
  type PropertyType "FileFormat" DestinationOptionsProperty = Value Prelude.Text
  set newValue DestinationOptionsProperty {..}
    = DestinationOptionsProperty {fileFormat = newValue, ..}
instance Property "HiveCompatiblePartitions" DestinationOptionsProperty where
  type PropertyType "HiveCompatiblePartitions" DestinationOptionsProperty = Value Prelude.Bool
  set newValue DestinationOptionsProperty {..}
    = DestinationOptionsProperty
        {hiveCompatiblePartitions = newValue, ..}
instance Property "PerHourPartition" DestinationOptionsProperty where
  type PropertyType "PerHourPartition" DestinationOptionsProperty = Value Prelude.Bool
  set newValue DestinationOptionsProperty {..}
    = DestinationOptionsProperty {perHourPartition = newValue, ..}