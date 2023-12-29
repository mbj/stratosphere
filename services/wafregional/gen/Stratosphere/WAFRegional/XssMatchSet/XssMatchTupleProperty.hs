module Stratosphere.WAFRegional.XssMatchSet.XssMatchTupleProperty (
        module Exports, XssMatchTupleProperty(..), mkXssMatchTupleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.XssMatchSet.FieldToMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data XssMatchTupleProperty
  = XssMatchTupleProperty {fieldToMatch :: FieldToMatchProperty,
                           textTransformation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkXssMatchTupleProperty ::
  FieldToMatchProperty -> Value Prelude.Text -> XssMatchTupleProperty
mkXssMatchTupleProperty fieldToMatch textTransformation
  = XssMatchTupleProperty
      {fieldToMatch = fieldToMatch,
       textTransformation = textTransformation}
instance ToResourceProperties XssMatchTupleProperty where
  toResourceProperties XssMatchTupleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::XssMatchSet.XssMatchTuple",
         supportsTags = Prelude.False,
         properties = ["FieldToMatch" JSON..= fieldToMatch,
                       "TextTransformation" JSON..= textTransformation]}
instance JSON.ToJSON XssMatchTupleProperty where
  toJSON XssMatchTupleProperty {..}
    = JSON.object
        ["FieldToMatch" JSON..= fieldToMatch,
         "TextTransformation" JSON..= textTransformation]
instance Property "FieldToMatch" XssMatchTupleProperty where
  type PropertyType "FieldToMatch" XssMatchTupleProperty = FieldToMatchProperty
  set newValue XssMatchTupleProperty {..}
    = XssMatchTupleProperty {fieldToMatch = newValue, ..}
instance Property "TextTransformation" XssMatchTupleProperty where
  type PropertyType "TextTransformation" XssMatchTupleProperty = Value Prelude.Text
  set newValue XssMatchTupleProperty {..}
    = XssMatchTupleProperty {textTransformation = newValue, ..}