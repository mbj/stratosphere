module Stratosphere.DataSync.StorageSystem.ServerCredentialsProperty (
        ServerCredentialsProperty(..), mkServerCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-storagesystem-servercredentials.html>
    ServerCredentialsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-storagesystem-servercredentials.html#cfn-datasync-storagesystem-servercredentials-password>
                               password :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-storagesystem-servercredentials.html#cfn-datasync-storagesystem-servercredentials-username>
                               username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ServerCredentialsProperty
mkServerCredentialsProperty password username
  = ServerCredentialsProperty
      {haddock_workaround_ = (), password = password,
       username = username}
instance ToResourceProperties ServerCredentialsProperty where
  toResourceProperties ServerCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::StorageSystem.ServerCredentials",
         supportsTags = Prelude.False,
         properties = ["Password" JSON..= password,
                       "Username" JSON..= username]}
instance JSON.ToJSON ServerCredentialsProperty where
  toJSON ServerCredentialsProperty {..}
    = JSON.object
        ["Password" JSON..= password, "Username" JSON..= username]
instance Property "Password" ServerCredentialsProperty where
  type PropertyType "Password" ServerCredentialsProperty = Value Prelude.Text
  set newValue ServerCredentialsProperty {..}
    = ServerCredentialsProperty {password = newValue, ..}
instance Property "Username" ServerCredentialsProperty where
  type PropertyType "Username" ServerCredentialsProperty = Value Prelude.Text
  set newValue ServerCredentialsProperty {..}
    = ServerCredentialsProperty {username = newValue, ..}