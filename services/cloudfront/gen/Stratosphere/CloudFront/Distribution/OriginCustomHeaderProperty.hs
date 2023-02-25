module Stratosphere.CloudFront.Distribution.OriginCustomHeaderProperty (
        OriginCustomHeaderProperty(..), mkOriginCustomHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginCustomHeaderProperty
  = OriginCustomHeaderProperty {headerName :: (Value Prelude.Text),
                                headerValue :: (Value Prelude.Text)}
mkOriginCustomHeaderProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> OriginCustomHeaderProperty
mkOriginCustomHeaderProperty headerName headerValue
  = OriginCustomHeaderProperty
      {headerName = headerName, headerValue = headerValue}
instance ToResourceProperties OriginCustomHeaderProperty where
  toResourceProperties OriginCustomHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.OriginCustomHeader",
         properties = ["HeaderName" JSON..= headerName,
                       "HeaderValue" JSON..= headerValue]}
instance JSON.ToJSON OriginCustomHeaderProperty where
  toJSON OriginCustomHeaderProperty {..}
    = JSON.object
        ["HeaderName" JSON..= headerName,
         "HeaderValue" JSON..= headerValue]
instance Property "HeaderName" OriginCustomHeaderProperty where
  type PropertyType "HeaderName" OriginCustomHeaderProperty = Value Prelude.Text
  set newValue OriginCustomHeaderProperty {..}
    = OriginCustomHeaderProperty {headerName = newValue, ..}
instance Property "HeaderValue" OriginCustomHeaderProperty where
  type PropertyType "HeaderValue" OriginCustomHeaderProperty = Value Prelude.Text
  set newValue OriginCustomHeaderProperty {..}
    = OriginCustomHeaderProperty {headerValue = newValue, ..}