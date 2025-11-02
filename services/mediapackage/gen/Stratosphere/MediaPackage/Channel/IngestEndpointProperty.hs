module Stratosphere.MediaPackage.Channel.IngestEndpointProperty (
        IngestEndpointProperty(..), mkIngestEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngestEndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-channel-ingestendpoint.html>
    IngestEndpointProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-channel-ingestendpoint.html#cfn-mediapackage-channel-ingestendpoint-id>
                            id :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-channel-ingestendpoint.html#cfn-mediapackage-channel-ingestendpoint-password>
                            password :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-channel-ingestendpoint.html#cfn-mediapackage-channel-ingestendpoint-url>
                            url :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-channel-ingestendpoint.html#cfn-mediapackage-channel-ingestendpoint-username>
                            username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngestEndpointProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> IngestEndpointProperty
mkIngestEndpointProperty id password url username
  = IngestEndpointProperty
      {haddock_workaround_ = (), id = id, password = password, url = url,
       username = username}
instance ToResourceProperties IngestEndpointProperty where
  toResourceProperties IngestEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::Channel.IngestEndpoint",
         supportsTags = Prelude.False,
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