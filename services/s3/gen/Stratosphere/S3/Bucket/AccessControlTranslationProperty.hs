module Stratosphere.S3.Bucket.AccessControlTranslationProperty (
        AccessControlTranslationProperty(..),
        mkAccessControlTranslationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessControlTranslationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accesscontroltranslation.html>
    AccessControlTranslationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accesscontroltranslation.html#cfn-s3-bucket-accesscontroltranslation-owner>
                                      owner :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessControlTranslationProperty ::
  Value Prelude.Text -> AccessControlTranslationProperty
mkAccessControlTranslationProperty owner
  = AccessControlTranslationProperty
      {haddock_workaround_ = (), owner = owner}
instance ToResourceProperties AccessControlTranslationProperty where
  toResourceProperties AccessControlTranslationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.AccessControlTranslation",
         supportsTags = Prelude.False, properties = ["Owner" JSON..= owner]}
instance JSON.ToJSON AccessControlTranslationProperty where
  toJSON AccessControlTranslationProperty {..}
    = JSON.object ["Owner" JSON..= owner]
instance Property "Owner" AccessControlTranslationProperty where
  type PropertyType "Owner" AccessControlTranslationProperty = Value Prelude.Text
  set newValue AccessControlTranslationProperty {..}
    = AccessControlTranslationProperty {owner = newValue, ..}