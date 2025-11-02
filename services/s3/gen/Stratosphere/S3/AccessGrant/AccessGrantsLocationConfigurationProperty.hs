module Stratosphere.S3.AccessGrant.AccessGrantsLocationConfigurationProperty (
        AccessGrantsLocationConfigurationProperty(..),
        mkAccessGrantsLocationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessGrantsLocationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accessgrant-accessgrantslocationconfiguration.html>
    AccessGrantsLocationConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-accessgrant-accessgrantslocationconfiguration.html#cfn-s3-accessgrant-accessgrantslocationconfiguration-s3subprefix>
                                               s3SubPrefix :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessGrantsLocationConfigurationProperty ::
  Value Prelude.Text -> AccessGrantsLocationConfigurationProperty
mkAccessGrantsLocationConfigurationProperty s3SubPrefix
  = AccessGrantsLocationConfigurationProperty
      {haddock_workaround_ = (), s3SubPrefix = s3SubPrefix}
instance ToResourceProperties AccessGrantsLocationConfigurationProperty where
  toResourceProperties AccessGrantsLocationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::AccessGrant.AccessGrantsLocationConfiguration",
         supportsTags = Prelude.False,
         properties = ["S3SubPrefix" JSON..= s3SubPrefix]}
instance JSON.ToJSON AccessGrantsLocationConfigurationProperty where
  toJSON AccessGrantsLocationConfigurationProperty {..}
    = JSON.object ["S3SubPrefix" JSON..= s3SubPrefix]
instance Property "S3SubPrefix" AccessGrantsLocationConfigurationProperty where
  type PropertyType "S3SubPrefix" AccessGrantsLocationConfigurationProperty = Value Prelude.Text
  set newValue AccessGrantsLocationConfigurationProperty {..}
    = AccessGrantsLocationConfigurationProperty
        {s3SubPrefix = newValue, ..}