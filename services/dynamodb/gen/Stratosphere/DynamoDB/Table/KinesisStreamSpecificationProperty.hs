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
  = KinesisStreamSpecificationProperty {approximateCreationDateTimePrecision :: (Prelude.Maybe (Value Prelude.Text)),
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