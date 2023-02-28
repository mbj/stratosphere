module Stratosphere.Kendra.DataSource.WebCrawlerBasicAuthenticationProperty (
        WebCrawlerBasicAuthenticationProperty(..),
        mkWebCrawlerBasicAuthenticationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebCrawlerBasicAuthenticationProperty
  = WebCrawlerBasicAuthenticationProperty {credentials :: (Value Prelude.Text),
                                           host :: (Value Prelude.Text),
                                           port :: (Value Prelude.Integer)}
mkWebCrawlerBasicAuthenticationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer -> WebCrawlerBasicAuthenticationProperty
mkWebCrawlerBasicAuthenticationProperty credentials host port
  = WebCrawlerBasicAuthenticationProperty
      {credentials = credentials, host = host, port = port}
instance ToResourceProperties WebCrawlerBasicAuthenticationProperty where
  toResourceProperties WebCrawlerBasicAuthenticationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.WebCrawlerBasicAuthentication",
         supportsTags = Prelude.False,
         properties = ["Credentials" JSON..= credentials,
                       "Host" JSON..= host, "Port" JSON..= port]}
instance JSON.ToJSON WebCrawlerBasicAuthenticationProperty where
  toJSON WebCrawlerBasicAuthenticationProperty {..}
    = JSON.object
        ["Credentials" JSON..= credentials, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Credentials" WebCrawlerBasicAuthenticationProperty where
  type PropertyType "Credentials" WebCrawlerBasicAuthenticationProperty = Value Prelude.Text
  set newValue WebCrawlerBasicAuthenticationProperty {..}
    = WebCrawlerBasicAuthenticationProperty
        {credentials = newValue, ..}
instance Property "Host" WebCrawlerBasicAuthenticationProperty where
  type PropertyType "Host" WebCrawlerBasicAuthenticationProperty = Value Prelude.Text
  set newValue WebCrawlerBasicAuthenticationProperty {..}
    = WebCrawlerBasicAuthenticationProperty {host = newValue, ..}
instance Property "Port" WebCrawlerBasicAuthenticationProperty where
  type PropertyType "Port" WebCrawlerBasicAuthenticationProperty = Value Prelude.Integer
  set newValue WebCrawlerBasicAuthenticationProperty {..}
    = WebCrawlerBasicAuthenticationProperty {port = newValue, ..}