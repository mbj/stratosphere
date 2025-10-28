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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-kinesisstreamspecification.html>
    KinesisStreamSpecificationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-kinesisstreamspecification.html#cfn-dynamodb-table-kinesisstreamspecification-approximatecreationdatetimeprecision>
                                        approximateCreationDateTimePrecision :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-kinesisstreamspecification.html#cfn-dynamodb-table-kinesisstreamspecification-streamarn>
                                        streamArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisStreamSpecificationProperty ::
  Value Prelude.Text -> KinesisStreamSpecificationProperty
mkKinesisStreamSpecificationProperty streamArn
  = KinesisStreamSpecificationProperty
      {streamArn = streamArn,
       approximateCreationDateTimePrecision = Prelude.Nothing}
instance ToResourceProperties KinesisStreamSpecificationProperty where
  toResourceProperties KinesisStreamSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.KinesisStreamSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StreamArn" JSON..= streamArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ApproximateCreationDateTimePrecision"
                                 Prelude.<$> approximateCreationDateTimePrecision]))}
instance JSON.ToJSON KinesisStreamSpecificationProperty where
  toJSON KinesisStreamSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StreamArn" JSON..= streamArn]
              (Prelude.catMaybes
                 [(JSON..=) "ApproximateCreationDateTimePrecision"
                    Prelude.<$> approximateCreationDateTimePrecision])))
instance Property "ApproximateCreationDateTimePrecision" KinesisStreamSpecificationProperty where
  type PropertyType "ApproximateCreationDateTimePrecision" KinesisStreamSpecificationProperty = Value Prelude.Text
  set newValue KinesisStreamSpecificationProperty {..}
    = KinesisStreamSpecificationProperty
        {approximateCreationDateTimePrecision = Prelude.pure newValue, ..}
instance Property "StreamArn" KinesisStreamSpecificationProperty where
  type PropertyType "StreamArn" KinesisStreamSpecificationProperty = Value Prelude.Text
  set newValue KinesisStreamSpecificationProperty {..}
    = KinesisStreamSpecificationProperty {streamArn = newValue, ..}