module Stratosphere.Transfer.Workflow.S3TagProperty (
        S3TagProperty(..), mkS3TagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3TagProperty
  = S3TagProperty {key :: (Value Prelude.Text),
                   value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3TagProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3TagProperty
mkS3TagProperty key value
  = S3TagProperty {key = key, value = value}
instance ToResourceProperties S3TagProperty where
  toResourceProperties S3TagProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.S3Tag",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON S3TagProperty where
  toJSON S3TagProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" S3TagProperty where
  type PropertyType "Key" S3TagProperty = Value Prelude.Text
  set newValue S3TagProperty {..}
    = S3TagProperty {key = newValue, ..}
instance Property "Value" S3TagProperty where
  type PropertyType "Value" S3TagProperty = Value Prelude.Text
  set newValue S3TagProperty {..}
    = S3TagProperty {value = newValue, ..}