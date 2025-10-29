module Stratosphere.WAFv2.RuleGroup.XssMatchStatementProperty (
        module Exports, XssMatchStatementProperty(..),
        mkXssMatchStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.FieldToMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
data XssMatchStatementProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-xssmatchstatement.html>
    XssMatchStatementProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-xssmatchstatement.html#cfn-wafv2-rulegroup-xssmatchstatement-fieldtomatch>
                               fieldToMatch :: FieldToMatchProperty,
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-xssmatchstatement.html#cfn-wafv2-rulegroup-xssmatchstatement-texttransformations>
                               textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkXssMatchStatementProperty ::
  FieldToMatchProperty
  -> [TextTransformationProperty] -> XssMatchStatementProperty
mkXssMatchStatementProperty fieldToMatch textTransformations
  = XssMatchStatementProperty
      {fieldToMatch = fieldToMatch,
       textTransformations = textTransformations}
instance ToResourceProperties XssMatchStatementProperty where
  toResourceProperties XssMatchStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.XssMatchStatement",
         supportsTags = Prelude.False,
         properties = ["FieldToMatch" JSON..= fieldToMatch,
                       "TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON XssMatchStatementProperty where
  toJSON XssMatchStatementProperty {..}
    = JSON.object
        ["FieldToMatch" JSON..= fieldToMatch,
         "TextTransformations" JSON..= textTransformations]
instance Property "FieldToMatch" XssMatchStatementProperty where
  type PropertyType "FieldToMatch" XssMatchStatementProperty = FieldToMatchProperty
  set newValue XssMatchStatementProperty {..}
    = XssMatchStatementProperty {fieldToMatch = newValue, ..}
instance Property "TextTransformations" XssMatchStatementProperty where
  type PropertyType "TextTransformations" XssMatchStatementProperty = [TextTransformationProperty]
  set newValue XssMatchStatementProperty {..}
    = XssMatchStatementProperty {textTransformations = newValue, ..}