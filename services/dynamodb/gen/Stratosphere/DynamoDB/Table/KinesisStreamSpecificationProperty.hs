module Stratosphere.DynamoDB.Table.KinesisStreamSpecificationProperty (
        KinesisStreamSpecificationProperty(..),
        mkKinesisStreamSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamSpecificationProperty
  = KinesisStreamSpecificationProperty {streamArn :: (Value Prelude.Text)}
mkKinesisStreamSpecificationProperty ::
  Value Prelude.Text -> KinesisStreamSpecificationProperty
mkKinesisStreamSpecificationProperty streamArn
  = KinesisStreamSpecificationProperty {streamArn = streamArn}
instance ToResourceProperties KinesisStreamSpecificationProperty where
  toResourceProperties KinesisStreamSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.KinesisStreamSpecification",
         properties = ["StreamArn" JSON..= streamArn]}
instance JSON.ToJSON KinesisStreamSpecificationProperty where
  toJSON KinesisStreamSpecificationProperty {..}
    = JSON.object ["StreamArn" JSON..= streamArn]
instance Property "StreamArn" KinesisStreamSpecificationProperty where
  type PropertyType "StreamArn" KinesisStreamSpecificationProperty = Value Prelude.Text
  set newValue KinesisStreamSpecificationProperty {}
    = KinesisStreamSpecificationProperty {streamArn = newValue, ..}