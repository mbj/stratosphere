module Stratosphere.MediaPackage.Channel.IngestEndpointProperty (
        IngestEndpointProperty(..), mkIngestEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngestEndpointProperty
  = IngestEndpointProperty {id :: (Value Prelude.Text),
                            password :: (Value Prelude.Text),
                            url :: (Value Prelude.Text),
                            username :: (Value Prelude.Text)}
mkIngestEndpointProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> IngestEndpointProperty
mkIngestEndpointProperty id password url username
  = IngestEndpointProperty
      {id = id, password = password, url = url, username = username}
instance ToResourceProperties IngestEndpointProperty where
  toResourceProperties IngestEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::Channel.IngestEndpoint",
         properties = ["Id" JSON..= id, "Password" JSON..= password,
                       "Url" JSON..= url, "Username" JSON..= username]}
instance JSON.ToJSON IngestEndpointProperty where
  toJSON IngestEndpointProperty {..}
    = JSON.object
        ["Id" JSON..= id, "Password" JSON..= password, "Url" JSON..= url,
         "Username" JSON..= username]
instance Property "Id" IngestEndpointProperty where
  type PropertyType "Id" IngestEndpointProperty = Value Prelude.Text
  set newValue IngestEndpointProperty {..}
    = IngestEndpointProperty {id = newValue, ..}
instance Property "Password" IngestEndpointProperty where
  type PropertyType "Password" IngestEndpointProperty = Value Prelude.Text
  set newValue IngestEndpointProperty {..}
    = IngestEndpointProperty {password = newValue, ..}
instance Property "Url" IngestEndpointProperty where
  type PropertyType "Url" IngestEndpointProperty = Value Prelude.Text
  set newValue IngestEndpointProperty {..}
    = IngestEndpointProperty {url = newValue, ..}
instance Property "Username" IngestEndpointProperty where
  type PropertyType "Username" IngestEndpointProperty = Value Prelude.Text
  set newValue IngestEndpointProperty {..}
    = IngestEndpointProperty {username = newValue, ..}