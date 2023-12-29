module Stratosphere.SageMaker.DataQualityJobDefinition.ConstraintsResourceProperty (
        ConstraintsResourceProperty(..), mkConstraintsResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConstraintsResourceProperty
  = ConstraintsResourceProperty {s3Uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConstraintsResourceProperty :: ConstraintsResourceProperty
mkConstraintsResourceProperty
  = ConstraintsResourceProperty {s3Uri = Prelude.Nothing}
instance ToResourceProperties ConstraintsResourceProperty where
  toResourceProperties ConstraintsResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.ConstraintsResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri])}
instance JSON.ToJSON ConstraintsResourceProperty where
  toJSON ConstraintsResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri]))
instance Property "S3Uri" ConstraintsResourceProperty where
  type PropertyType "S3Uri" ConstraintsResourceProperty = Value Prelude.Text
  set newValue ConstraintsResourceProperty {}
    = ConstraintsResourceProperty {s3Uri = Prelude.pure newValue, ..}