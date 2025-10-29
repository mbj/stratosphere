module Stratosphere.WAFv2.RuleGroup.SqliMatchStatementProperty (
        module Exports, SqliMatchStatementProperty(..),
        mkSqliMatchStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.FieldToMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqliMatchStatementProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html>
    SqliMatchStatementProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html#cfn-wafv2-rulegroup-sqlimatchstatement-fieldtomatch>
                                fieldToMatch :: FieldToMatchProperty,
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html#cfn-wafv2-rulegroup-sqlimatchstatement-sensitivitylevel>
                                sensitivityLevel :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html#cfn-wafv2-rulegroup-sqlimatchstatement-texttransformations>
                                textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqliMatchStatementProperty ::
  FieldToMatchProperty
  -> [TextTransformationProperty] -> SqliMatchStatementProperty
mkSqliMatchStatementProperty fieldToMatch textTransformations
  = SqliMatchStatementProperty
      {fieldToMatch = fieldToMatch,
       textTransformations = textTransformations,
       sensitivityLevel = Prelude.Nothing}
instance ToResourceProperties SqliMatchStatementProperty where
  toResourceProperties SqliMatchStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.SqliMatchStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldToMatch" JSON..= fieldToMatch,
                            "TextTransformations" JSON..= textTransformations]
                           (Prelude.catMaybes
                              [(JSON..=) "SensitivityLevel" Prelude.<$> sensitivityLevel]))}
instance JSON.ToJSON SqliMatchStatementProperty where
  toJSON SqliMatchStatementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldToMatch" JSON..= fieldToMatch,
               "TextTransformations" JSON..= textTransformations]
              (Prelude.catMaybes
                 [(JSON..=) "SensitivityLevel" Prelude.<$> sensitivityLevel])))
instance Property "FieldToMatch" SqliMatchStatementProperty where
  type PropertyType "FieldToMatch" SqliMatchStatementProperty = FieldToMatchProperty
  set newValue SqliMatchStatementProperty {..}
    = SqliMatchStatementProperty {fieldToMatch = newValue, ..}
instance Property "SensitivityLevel" SqliMatchStatementProperty where
  type PropertyType "SensitivityLevel" SqliMatchStatementProperty = Value Prelude.Text
  set newValue SqliMatchStatementProperty {..}
    = SqliMatchStatementProperty
        {sensitivityLevel = Prelude.pure newValue, ..}
instance Property "TextTransformations" SqliMatchStatementProperty where
  type PropertyType "TextTransformations" SqliMatchStatementProperty = [TextTransformationProperty]
  set newValue SqliMatchStatementProperty {..}
    = SqliMatchStatementProperty {textTransformations = newValue, ..}