module Stratosphere.WAFv2.WebACL.RegexMatchStatementProperty (
        module Exports, RegexMatchStatementProperty(..),
        mkRegexMatchStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldToMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegexMatchStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexmatchstatement.html>
    RegexMatchStatementProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexmatchstatement.html#cfn-wafv2-webacl-regexmatchstatement-fieldtomatch>
                                 fieldToMatch :: FieldToMatchProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexmatchstatement.html#cfn-wafv2-webacl-regexmatchstatement-regexstring>
                                 regexString :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexmatchstatement.html#cfn-wafv2-webacl-regexmatchstatement-texttransformations>
                                 textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegexMatchStatementProperty ::
  FieldToMatchProperty
  -> Value Prelude.Text
     -> [TextTransformationProperty] -> RegexMatchStatementProperty
mkRegexMatchStatementProperty
  fieldToMatch
  regexString
  textTransformations
  = RegexMatchStatementProperty
      {haddock_workaround_ = (), fieldToMatch = fieldToMatch,
       regexString = regexString,
       textTransformations = textTransformations}
instance ToResourceProperties RegexMatchStatementProperty where
  toResourceProperties RegexMatchStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RegexMatchStatement",
         supportsTags = Prelude.False,
         properties = ["FieldToMatch" JSON..= fieldToMatch,
                       "RegexString" JSON..= regexString,
                       "TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON RegexMatchStatementProperty where
  toJSON RegexMatchStatementProperty {..}
    = JSON.object
        ["FieldToMatch" JSON..= fieldToMatch,
         "RegexString" JSON..= regexString,
         "TextTransformations" JSON..= textTransformations]
instance Property "FieldToMatch" RegexMatchStatementProperty where
  type PropertyType "FieldToMatch" RegexMatchStatementProperty = FieldToMatchProperty
  set newValue RegexMatchStatementProperty {..}
    = RegexMatchStatementProperty {fieldToMatch = newValue, ..}
instance Property "RegexString" RegexMatchStatementProperty where
  type PropertyType "RegexString" RegexMatchStatementProperty = Value Prelude.Text
  set newValue RegexMatchStatementProperty {..}
    = RegexMatchStatementProperty {regexString = newValue, ..}
instance Property "TextTransformations" RegexMatchStatementProperty where
  type PropertyType "TextTransformations" RegexMatchStatementProperty = [TextTransformationProperty]
  set newValue RegexMatchStatementProperty {..}
    = RegexMatchStatementProperty {textTransformations = newValue, ..}