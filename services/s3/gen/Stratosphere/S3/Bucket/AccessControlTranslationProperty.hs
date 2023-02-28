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
  = AccessControlTranslationProperty {owner :: (Value Prelude.Text)}
mkAccessControlTranslationProperty ::
  Value Prelude.Text -> AccessControlTranslationProperty
mkAccessControlTranslationProperty owner
  = AccessControlTranslationProperty {owner = owner}
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
  set newValue AccessControlTranslationProperty {}
    = AccessControlTranslationProperty {owner = newValue, ..}