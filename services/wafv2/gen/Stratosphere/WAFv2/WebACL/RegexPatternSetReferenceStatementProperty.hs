module Stratosphere.WAFv2.WebACL.RegexPatternSetReferenceStatementProperty (
        module Exports, RegexPatternSetReferenceStatementProperty(..),
        mkRegexPatternSetReferenceStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldToMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegexPatternSetReferenceStatementProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html>
    RegexPatternSetReferenceStatementProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-arn>
                                               arn :: (Value Prelude.Text),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-fieldtomatch>
                                               fieldToMatch :: FieldToMatchProperty,
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-texttransformations>
                                               textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegexPatternSetReferenceStatementProperty ::
  Value Prelude.Text
  -> FieldToMatchProperty
     -> [TextTransformationProperty]
        -> RegexPatternSetReferenceStatementProperty
mkRegexPatternSetReferenceStatementProperty
  arn
  fieldToMatch
  textTransformations
  = RegexPatternSetReferenceStatementProperty
      {arn = arn, fieldToMatch = fieldToMatch,
       textTransformations = textTransformations}
instance ToResourceProperties RegexPatternSetReferenceStatementProperty where
  toResourceProperties RegexPatternSetReferenceStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RegexPatternSetReferenceStatement",
         supportsTags = Prelude.False,
         properties = ["Arn" JSON..= arn,
                       "FieldToMatch" JSON..= fieldToMatch,
                       "TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON RegexPatternSetReferenceStatementProperty where
  toJSON RegexPatternSetReferenceStatementProperty {..}
    = JSON.object
        ["Arn" JSON..= arn, "FieldToMatch" JSON..= fieldToMatch,
         "TextTransformations" JSON..= textTransformations]
instance Property "Arn" RegexPatternSetReferenceStatementProperty where
  type PropertyType "Arn" RegexPatternSetReferenceStatementProperty = Value Prelude.Text
  set newValue RegexPatternSetReferenceStatementProperty {..}
    = RegexPatternSetReferenceStatementProperty {arn = newValue, ..}
instance Property "FieldToMatch" RegexPatternSetReferenceStatementProperty where
  type PropertyType "FieldToMatch" RegexPatternSetReferenceStatementProperty = FieldToMatchProperty
  set newValue RegexPatternSetReferenceStatementProperty {..}
    = RegexPatternSetReferenceStatementProperty
        {fieldToMatch = newValue, ..}
instance Property "TextTransformations" RegexPatternSetReferenceStatementProperty where
  type PropertyType "TextTransformations" RegexPatternSetReferenceStatementProperty = [TextTransformationProperty]
  set newValue RegexPatternSetReferenceStatementProperty {..}
    = RegexPatternSetReferenceStatementProperty
        {textTransformations = newValue, ..}