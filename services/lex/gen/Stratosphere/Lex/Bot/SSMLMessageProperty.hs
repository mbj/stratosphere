module Stratosphere.Lex.Bot.SSMLMessageProperty (
        SSMLMessageProperty(..), mkSSMLMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SSMLMessageProperty
  = SSMLMessageProperty {value :: (Value Prelude.Text)}
mkSSMLMessageProperty :: Value Prelude.Text -> SSMLMessageProperty
mkSSMLMessageProperty value = SSMLMessageProperty {value = value}
instance ToResourceProperties SSMLMessageProperty where
  toResourceProperties SSMLMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.SSMLMessage",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON SSMLMessageProperty where
  toJSON SSMLMessageProperty {..}
    = JSON.object ["Value" JSON..= value]
instance Property "Value" SSMLMessageProperty where
  type PropertyType "Value" SSMLMessageProperty = Value Prelude.Text
  set newValue SSMLMessageProperty {}
    = SSMLMessageProperty {value = newValue, ..}