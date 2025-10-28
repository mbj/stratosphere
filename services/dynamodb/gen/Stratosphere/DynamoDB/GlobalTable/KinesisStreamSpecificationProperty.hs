module Stratosphere.DynamoDB.GlobalTable.KinesisStreamSpecificationProperty (
        KinesisStreamSpecificationProperty(..),
        mkKinesisStreamSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-kinesisstreamspecification.html>
    KinesisStreamSpecificationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-kinesisstreamspecification.html#cfn-dynamodb-globaltable-kinesisstreamspecification-approximatecreationdatetimeprecision>
                                        approximateCreationDateTimePrecision :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-kinesisstreamspecification.html#cfn-dynamodb-globaltable-kinesisstreamspecification-streamarn>
                                        streamArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisStreamSpecificationProperty ::
  Value Prelude.Text -> KinesisStreamSpecificationProperty
mkKinesisStreamSpecificationProperty streamArn
  = KinesisStreamSpecificationProperty
      {haddock_workaround_ = (), streamArn = streamArn,
       approximateCreationDateTimePrecision = Prelude.Nothing}
instance ToResourceProperties KinesisStreamSpecificationProperty where
  toResourceProperties KinesisStreamSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.KinesisStreamSpecification",
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