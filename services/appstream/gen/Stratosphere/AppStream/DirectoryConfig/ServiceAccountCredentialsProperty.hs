module Stratosphere.AppStream.DirectoryConfig.ServiceAccountCredentialsProperty (
        ServiceAccountCredentialsProperty(..),
        mkServiceAccountCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceAccountCredentialsProperty
  = ServiceAccountCredentialsProperty {accountName :: (Value Prelude.Text),
                                       accountPassword :: (Value Prelude.Text)}
mkServiceAccountCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ServiceAccountCredentialsProperty
mkServiceAccountCredentialsProperty accountName accountPassword
  = ServiceAccountCredentialsProperty
      {accountName = accountName, accountPassword = accountPassword}
instance ToResourceProperties ServiceAccountCredentialsProperty where
  toResourceProperties ServiceAccountCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::DirectoryConfig.ServiceAccountCredentials",
         supportsTags = Prelude.False,
         properties = ["AccountName" JSON..= accountName,
                       "AccountPassword" JSON..= accountPassword]}
instance JSON.ToJSON ServiceAccountCredentialsProperty where
  toJSON ServiceAccountCredentialsProperty {..}
    = JSON.object
        ["AccountName" JSON..= accountName,
         "AccountPassword" JSON..= accountPassword]
instance Property "AccountName" ServiceAccountCredentialsProperty where
  type PropertyType "AccountName" ServiceAccountCredentialsProperty = Value Prelude.Text
  set newValue ServiceAccountCredentialsProperty {..}
    = ServiceAccountCredentialsProperty {accountName = newValue, ..}
instance Property "AccountPassword" ServiceAccountCredentialsProperty where
  type PropertyType "AccountPassword" ServiceAccountCredentialsProperty = Value Prelude.Text
  set newValue ServiceAccountCredentialsProperty {..}
    = ServiceAccountCredentialsProperty
        {accountPassword = newValue, ..}