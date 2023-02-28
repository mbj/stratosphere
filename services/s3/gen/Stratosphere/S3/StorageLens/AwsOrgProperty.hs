module Stratosphere.S3.StorageLens.AwsOrgProperty (
        AwsOrgProperty(..), mkAwsOrgProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsOrgProperty = AwsOrgProperty {arn :: (Value Prelude.Text)}
mkAwsOrgProperty :: Value Prelude.Text -> AwsOrgProperty
mkAwsOrgProperty arn = AwsOrgProperty {arn = arn}
instance ToResourceProperties AwsOrgProperty where
  toResourceProperties AwsOrgProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.AwsOrg",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON AwsOrgProperty where
  toJSON AwsOrgProperty {..} = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" AwsOrgProperty where
  type PropertyType "Arn" AwsOrgProperty = Value Prelude.Text
  set newValue AwsOrgProperty {}
    = AwsOrgProperty {arn = newValue, ..}