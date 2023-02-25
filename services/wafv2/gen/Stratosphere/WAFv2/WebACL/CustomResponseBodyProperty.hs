module Stratosphere.WAFv2.WebACL.CustomResponseBodyProperty (
        CustomResponseBodyProperty(..), mkCustomResponseBodyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomResponseBodyProperty
  = CustomResponseBodyProperty {content :: (Value Prelude.Text),
                                contentType :: (Value Prelude.Text)}
mkCustomResponseBodyProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomResponseBodyProperty
mkCustomResponseBodyProperty content contentType
  = CustomResponseBodyProperty
      {content = content, contentType = contentType}
instance ToResourceProperties CustomResponseBodyProperty where
  toResourceProperties CustomResponseBodyProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.CustomResponseBody",
         properties = ["Content" JSON..= content,
                       "ContentType" JSON..= contentType]}
instance JSON.ToJSON CustomResponseBodyProperty where
  toJSON CustomResponseBodyProperty {..}
    = JSON.object
        ["Content" JSON..= content, "ContentType" JSON..= contentType]
instance Property "Content" CustomResponseBodyProperty where
  type PropertyType "Content" CustomResponseBodyProperty = Value Prelude.Text
  set newValue CustomResponseBodyProperty {..}
    = CustomResponseBodyProperty {content = newValue, ..}
instance Property "ContentType" CustomResponseBodyProperty where
  type PropertyType "ContentType" CustomResponseBodyProperty = Value Prelude.Text
  set newValue CustomResponseBodyProperty {..}
    = CustomResponseBodyProperty {contentType = newValue, ..}