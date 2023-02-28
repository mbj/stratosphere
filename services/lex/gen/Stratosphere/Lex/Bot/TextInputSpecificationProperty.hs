module Stratosphere.Lex.Bot.TextInputSpecificationProperty (
        TextInputSpecificationProperty(..),
        mkTextInputSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextInputSpecificationProperty
  = TextInputSpecificationProperty {startTimeoutMs :: (Value Prelude.Integer)}
mkTextInputSpecificationProperty ::
  Value Prelude.Integer -> TextInputSpecificationProperty
mkTextInputSpecificationProperty startTimeoutMs
  = TextInputSpecificationProperty {startTimeoutMs = startTimeoutMs}
instance ToResourceProperties TextInputSpecificationProperty where
  toResourceProperties TextInputSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.TextInputSpecification",
         supportsTags = Prelude.False,
         properties = ["StartTimeoutMs" JSON..= startTimeoutMs]}
instance JSON.ToJSON TextInputSpecificationProperty where
  toJSON TextInputSpecificationProperty {..}
    = JSON.object ["StartTimeoutMs" JSON..= startTimeoutMs]
instance Property "StartTimeoutMs" TextInputSpecificationProperty where
  type PropertyType "StartTimeoutMs" TextInputSpecificationProperty = Value Prelude.Integer
  set newValue TextInputSpecificationProperty {}
    = TextInputSpecificationProperty {startTimeoutMs = newValue, ..}