module Stratosphere.WAFRegional.SqlInjectionMatchSet.SqlInjectionMatchTupleProperty (
        module Exports, SqlInjectionMatchTupleProperty(..),
        mkSqlInjectionMatchTupleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.SqlInjectionMatchSet.FieldToMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqlInjectionMatchTupleProperty
  = SqlInjectionMatchTupleProperty {fieldToMatch :: FieldToMatchProperty,
                                    textTransformation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqlInjectionMatchTupleProperty ::
  FieldToMatchProperty
  -> Value Prelude.Text -> SqlInjectionMatchTupleProperty
mkSqlInjectionMatchTupleProperty fieldToMatch textTransformation
  = SqlInjectionMatchTupleProperty
      {fieldToMatch = fieldToMatch,
       textTransformation = textTransformation}
instance ToResourceProperties SqlInjectionMatchTupleProperty where
  toResourceProperties SqlInjectionMatchTupleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::SqlInjectionMatchSet.SqlInjectionMatchTuple",
         supportsTags = Prelude.False,
         properties = ["FieldToMatch" JSON..= fieldToMatch,
                       "TextTransformation" JSON..= textTransformation]}
instance JSON.ToJSON SqlInjectionMatchTupleProperty where
  toJSON SqlInjectionMatchTupleProperty {..}
    = JSON.object
        ["FieldToMatch" JSON..= fieldToMatch,
         "TextTransformation" JSON..= textTransformation]
instance Property "FieldToMatch" SqlInjectionMatchTupleProperty where
  type PropertyType "FieldToMatch" SqlInjectionMatchTupleProperty = FieldToMatchProperty
  set newValue SqlInjectionMatchTupleProperty {..}
    = SqlInjectionMatchTupleProperty {fieldToMatch = newValue, ..}
instance Property "TextTransformation" SqlInjectionMatchTupleProperty where
  type PropertyType "TextTransformation" SqlInjectionMatchTupleProperty = Value Prelude.Text
  set newValue SqlInjectionMatchTupleProperty {..}
    = SqlInjectionMatchTupleProperty
        {textTransformation = newValue, ..}