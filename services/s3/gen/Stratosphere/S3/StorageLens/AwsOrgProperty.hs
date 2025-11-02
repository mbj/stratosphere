module Stratosphere.S3.StorageLens.AwsOrgProperty (
        AwsOrgProperty(..), mkAwsOrgProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsOrgProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-awsorg.html>
    AwsOrgProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-awsorg.html#cfn-s3-storagelens-awsorg-arn>
                    arn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsOrgProperty :: Value Prelude.Text -> AwsOrgProperty
mkAwsOrgProperty arn
  = AwsOrgProperty {haddock_workaround_ = (), arn = arn}
instance ToResourceProperties AwsOrgProperty where
  toResourceProperties AwsOrgProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.AwsOrg",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON AwsOrgProperty where
  toJSON AwsOrgProperty {..} = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" AwsOrgProperty where
  type PropertyType "Arn" AwsOrgProperty = Value Prelude.Text
  set newValue AwsOrgProperty {..}
    = AwsOrgProperty {arn = newValue, ..}