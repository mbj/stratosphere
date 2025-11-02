module Stratosphere.WAF.XssMatchSet.XssMatchTupleProperty (
        module Exports, XssMatchTupleProperty(..), mkXssMatchTupleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.XssMatchSet.FieldToMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data XssMatchTupleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html>
    XssMatchTupleProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch>
                           fieldToMatch :: FieldToMatchProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html#cfn-waf-xssmatchset-xssmatchtuple-texttransformation>
                           textTransformation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkXssMatchTupleProperty ::
  FieldToMatchProperty -> Value Prelude.Text -> XssMatchTupleProperty
mkXssMatchTupleProperty fieldToMatch textTransformation
  = XssMatchTupleProperty
      {haddock_workaround_ = (), fieldToMatch = fieldToMatch,
       textTransformation = textTransformation}
instance ToResourceProperties XssMatchTupleProperty where
  toResourceProperties XssMatchTupleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAF::XssMatchSet.XssMatchTuple",
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