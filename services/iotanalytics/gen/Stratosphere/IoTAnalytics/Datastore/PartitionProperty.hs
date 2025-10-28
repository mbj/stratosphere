module Stratosphere.IoTAnalytics.Datastore.PartitionProperty (
        PartitionProperty(..), mkPartitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PartitionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-partition.html>
    PartitionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-partition.html#cfn-iotanalytics-datastore-partition-attributename>
                       attributeName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartitionProperty :: Value Prelude.Text -> PartitionProperty
mkPartitionProperty attributeName
  = PartitionProperty {attributeName = attributeName}
instance ToResourceProperties PartitionProperty where
  toResourceProperties PartitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.Partition",
         supportsTags = Prelude.False,
         properties = ["AttributeName" JSON..= attributeName]}
instance JSON.ToJSON PartitionProperty where
  toJSON PartitionProperty {..}
    = JSON.object ["AttributeName" JSON..= attributeName]
instance Property "AttributeName" PartitionProperty where
  type PropertyType "AttributeName" PartitionProperty = Value Prelude.Text
  set newValue PartitionProperty {}
    = PartitionProperty {attributeName = newValue, ..}