module Stratosphere.EC2.ClientVpnEndpoint.DirectoryServiceAuthenticationRequestProperty (
        DirectoryServiceAuthenticationRequestProperty(..),
        mkDirectoryServiceAuthenticationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DirectoryServiceAuthenticationRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-directoryserviceauthenticationrequest.html>
    DirectoryServiceAuthenticationRequestProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-directoryserviceauthenticationrequest.html#cfn-ec2-clientvpnendpoint-directoryserviceauthenticationrequest-directoryid>
                                                   directoryId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDirectoryServiceAuthenticationRequestProperty ::
  Value Prelude.Text -> DirectoryServiceAuthenticationRequestProperty
mkDirectoryServiceAuthenticationRequestProperty directoryId
  = DirectoryServiceAuthenticationRequestProperty
      {haddock_workaround_ = (), directoryId = directoryId}
instance ToResourceProperties DirectoryServiceAuthenticationRequestProperty where
  toResourceProperties
    DirectoryServiceAuthenticationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.DirectoryServiceAuthenticationRequest",
         supportsTags = Prelude.False,
         properties = ["DirectoryId" JSON..= directoryId]}
instance JSON.ToJSON DirectoryServiceAuthenticationRequestProperty where
  toJSON DirectoryServiceAuthenticationRequestProperty {..}
    = JSON.object ["DirectoryId" JSON..= directoryId]
instance Property "DirectoryId" DirectoryServiceAuthenticationRequestProperty where
  type PropertyType "DirectoryId" DirectoryServiceAuthenticationRequestProperty = Value Prelude.Text
  set newValue DirectoryServiceAuthenticationRequestProperty {..}
    = DirectoryServiceAuthenticationRequestProperty
        {directoryId = newValue, ..}