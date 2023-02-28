module Stratosphere.CloudFront.ResponseHeadersPolicy.RemoveHeaderProperty (
        RemoveHeaderProperty(..), mkRemoveHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RemoveHeaderProperty
  = RemoveHeaderProperty {header :: (Value Prelude.Text)}
mkRemoveHeaderProperty ::
  Value Prelude.Text -> RemoveHeaderProperty
mkRemoveHeaderProperty header
  = RemoveHeaderProperty {header = header}
instance ToResourceProperties RemoveHeaderProperty where
  toResourceProperties RemoveHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.RemoveHeader",
         supportsTags = Prelude.False,
         properties = ["Header" JSON..= header]}
instance JSON.ToJSON RemoveHeaderProperty where
  toJSON RemoveHeaderProperty {..}
    = JSON.object ["Header" JSON..= header]
instance Property "Header" RemoveHeaderProperty where
  type PropertyType "Header" RemoveHeaderProperty = Value Prelude.Text
  set newValue RemoveHeaderProperty {}
    = RemoveHeaderProperty {header = newValue, ..}