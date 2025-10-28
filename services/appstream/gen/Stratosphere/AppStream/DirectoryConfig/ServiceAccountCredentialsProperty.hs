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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-serviceaccountcredentials.html>
    ServiceAccountCredentialsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-serviceaccountcredentials.html#cfn-appstream-directoryconfig-serviceaccountcredentials-accountname>
                                       accountName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-serviceaccountcredentials.html#cfn-appstream-directoryconfig-serviceaccountcredentials-accountpassword>
                                       accountPassword :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceAccountCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ServiceAccountCredentialsProperty
mkServiceAccountCredentialsProperty accountName accountPassword
  = ServiceAccountCredentialsProperty
      {haddock_workaround_ = (), accountName = accountName,
       accountPassword = accountPassword}
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