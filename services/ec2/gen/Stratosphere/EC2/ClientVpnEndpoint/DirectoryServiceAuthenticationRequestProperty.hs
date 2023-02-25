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
  = DirectoryServiceAuthenticationRequestProperty {directoryId :: (Value Prelude.Text)}
mkDirectoryServiceAuthenticationRequestProperty ::
  Value Prelude.Text -> DirectoryServiceAuthenticationRequestProperty
mkDirectoryServiceAuthenticationRequestProperty directoryId
  = DirectoryServiceAuthenticationRequestProperty
      {directoryId = directoryId}
instance ToResourceProperties DirectoryServiceAuthenticationRequestProperty where
  toResourceProperties
    DirectoryServiceAuthenticationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.DirectoryServiceAuthenticationRequest",
         properties = ["DirectoryId" JSON..= directoryId]}
instance JSON.ToJSON DirectoryServiceAuthenticationRequestProperty where
  toJSON DirectoryServiceAuthenticationRequestProperty {..}
    = JSON.object ["DirectoryId" JSON..= directoryId]
instance Property "DirectoryId" DirectoryServiceAuthenticationRequestProperty where
  type PropertyType "DirectoryId" DirectoryServiceAuthenticationRequestProperty = Value Prelude.Text
  set newValue DirectoryServiceAuthenticationRequestProperty {}
    = DirectoryServiceAuthenticationRequestProperty
        {directoryId = newValue, ..}