module Stratosphere.CloudFormation.GuardHook.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-s3location.html>
    S3LocationProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-s3location.html#cfn-cloudformation-guardhook-s3location-uri>
                        uri :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-s3location.html#cfn-cloudformation-guardhook-s3location-versionid>
                        versionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LocationProperty :: Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty uri
  = S3LocationProperty
      {haddock_workaround_ = (), uri = uri, versionId = Prelude.Nothing}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::GuardHook.S3Location",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Uri" JSON..= uri]
                           (Prelude.catMaybes [(JSON..=) "VersionId" Prelude.<$> versionId]))}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Uri" JSON..= uri]
              (Prelude.catMaybes [(JSON..=) "VersionId" Prelude.<$> versionId])))
instance Property "Uri" S3LocationProperty where
  type PropertyType "Uri" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {uri = newValue, ..}
instance Property "VersionId" S3LocationProperty where
  type PropertyType "VersionId" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {versionId = Prelude.pure newValue, ..}