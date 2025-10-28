module Stratosphere.WAFv2.RuleGroup.StatementProperty (
        module Exports, StatementProperty(..), mkStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.AndStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.ByteMatchStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.GeoMatchStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.IPSetReferenceStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.LabelMatchStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.NotStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.OrStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateBasedStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RegexMatchStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RegexPatternSetReferenceStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.SizeConstraintStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.SqliMatchStatementProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.XssMatchStatementProperty as Exports
import Stratosphere.ResourceProperties
data StatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html>
    StatementProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-andstatement>
                       andStatement :: (Prelude.Maybe AndStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-bytematchstatement>
                       byteMatchStatement :: (Prelude.Maybe ByteMatchStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-geomatchstatement>
                       geoMatchStatement :: (Prelude.Maybe GeoMatchStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-ipsetreferencestatement>
                       iPSetReferenceStatement :: (Prelude.Maybe IPSetReferenceStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-labelmatchstatement>
                       labelMatchStatement :: (Prelude.Maybe LabelMatchStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-notstatement>
                       notStatement :: (Prelude.Maybe NotStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-orstatement>
                       orStatement :: (Prelude.Maybe OrStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-ratebasedstatement>
                       rateBasedStatement :: (Prelude.Maybe RateBasedStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-regexmatchstatement>
                       regexMatchStatement :: (Prelude.Maybe RegexMatchStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-regexpatternsetreferencestatement>
                       regexPatternSetReferenceStatement :: (Prelude.Maybe RegexPatternSetReferenceStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-sizeconstraintstatement>
                       sizeConstraintStatement :: (Prelude.Maybe SizeConstraintStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-sqlimatchstatement>
                       sqliMatchStatement :: (Prelude.Maybe SqliMatchStatementProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statement.html#cfn-wafv2-rulegroup-statement-xssmatchstatement>
                       xssMatchStatement :: (Prelude.Maybe XssMatchStatementProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatementProperty :: StatementProperty
mkStatementProperty
  = StatementProperty
      {haddock_workaround_ = (), andStatement = Prelude.Nothing,
       byteMatchStatement = Prelude.Nothing,
       geoMatchStatement = Prelude.Nothing,
       iPSetReferenceStatement = Prelude.Nothing,
       labelMatchStatement = Prelude.Nothing,
       notStatement = Prelude.Nothing, orStatement = Prelude.Nothing,
       rateBasedStatement = Prelude.Nothing,
       regexMatchStatement = Prelude.Nothing,
       regexPatternSetReferenceStatement = Prelude.Nothing,
       sizeConstraintStatement = Prelude.Nothing,
       sqliMatchStatement = Prelude.Nothing,
       xssMatchStatement = Prelude.Nothing}
instance ToResourceProperties StatementProperty where
  toResourceProperties StatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.Statement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AndStatement" Prelude.<$> andStatement,
                            (JSON..=) "ByteMatchStatement" Prelude.<$> byteMatchStatement,
                            (JSON..=) "GeoMatchStatement" Prelude.<$> geoMatchStatement,
                            (JSON..=) "IPSetReferenceStatement"
                              Prelude.<$> iPSetReferenceStatement,
                            (JSON..=) "LabelMatchStatement" Prelude.<$> labelMatchStatement,
                            (JSON..=) "NotStatement" Prelude.<$> notStatement,
                            (JSON..=) "OrStatement" Prelude.<$> orStatement,
                            (JSON..=) "RateBasedStatement" Prelude.<$> rateBasedStatement,
                            (JSON..=) "RegexMatchStatement" Prelude.<$> regexMatchStatement,
                            (JSON..=) "RegexPatternSetReferenceStatement"
                              Prelude.<$> regexPatternSetReferenceStatement,
                            (JSON..=) "SizeConstraintStatement"
                              Prelude.<$> sizeConstraintStatement,
                            (JSON..=) "SqliMatchStatement" Prelude.<$> sqliMatchStatement,
                            (JSON..=) "XssMatchStatement" Prelude.<$> xssMatchStatement])}
instance JSON.ToJSON StatementProperty where
  toJSON StatementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AndStatement" Prelude.<$> andStatement,
               (JSON..=) "ByteMatchStatement" Prelude.<$> byteMatchStatement,
               (JSON..=) "GeoMatchStatement" Prelude.<$> geoMatchStatement,
               (JSON..=) "IPSetReferenceStatement"
                 Prelude.<$> iPSetReferenceStatement,
               (JSON..=) "LabelMatchStatement" Prelude.<$> labelMatchStatement,
               (JSON..=) "NotStatement" Prelude.<$> notStatement,
               (JSON..=) "OrStatement" Prelude.<$> orStatement,
               (JSON..=) "RateBasedStatement" Prelude.<$> rateBasedStatement,
               (JSON..=) "RegexMatchStatement" Prelude.<$> regexMatchStatement,
               (JSON..=) "RegexPatternSetReferenceStatement"
                 Prelude.<$> regexPatternSetReferenceStatement,
               (JSON..=) "SizeConstraintStatement"
                 Prelude.<$> sizeConstraintStatement,
               (JSON..=) "SqliMatchStatement" Prelude.<$> sqliMatchStatement,
               (JSON..=) "XssMatchStatement" Prelude.<$> xssMatchStatement]))
instance Property "AndStatement" StatementProperty where
  type PropertyType "AndStatement" StatementProperty = AndStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty {andStatement = Prelude.pure newValue, ..}
instance Property "ByteMatchStatement" StatementProperty where
  type PropertyType "ByteMatchStatement" StatementProperty = ByteMatchStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty
        {byteMatchStatement = Prelude.pure newValue, ..}
instance Property "GeoMatchStatement" StatementProperty where
  type PropertyType "GeoMatchStatement" StatementProperty = GeoMatchStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty {geoMatchStatement = Prelude.pure newValue, ..}
instance Property "IPSetReferenceStatement" StatementProperty where
  type PropertyType "IPSetReferenceStatement" StatementProperty = IPSetReferenceStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty
        {iPSetReferenceStatement = Prelude.pure newValue, ..}
instance Property "LabelMatchStatement" StatementProperty where
  type PropertyType "LabelMatchStatement" StatementProperty = LabelMatchStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty
        {labelMatchStatement = Prelude.pure newValue, ..}
instance Property "NotStatement" StatementProperty where
  type PropertyType "NotStatement" StatementProperty = NotStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty {notStatement = Prelude.pure newValue, ..}
instance Property "OrStatement" StatementProperty where
  type PropertyType "OrStatement" StatementProperty = OrStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty {orStatement = Prelude.pure newValue, ..}
instance Property "RateBasedStatement" StatementProperty where
  type PropertyType "RateBasedStatement" StatementProperty = RateBasedStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty
        {rateBasedStatement = Prelude.pure newValue, ..}
instance Property "RegexMatchStatement" StatementProperty where
  type PropertyType "RegexMatchStatement" StatementProperty = RegexMatchStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty
        {regexMatchStatement = Prelude.pure newValue, ..}
instance Property "RegexPatternSetReferenceStatement" StatementProperty where
  type PropertyType "RegexPatternSetReferenceStatement" StatementProperty = RegexPatternSetReferenceStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty
        {regexPatternSetReferenceStatement = Prelude.pure newValue, ..}
instance Property "SizeConstraintStatement" StatementProperty where
  type PropertyType "SizeConstraintStatement" StatementProperty = SizeConstraintStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty
        {sizeConstraintStatement = Prelude.pure newValue, ..}
instance Property "SqliMatchStatement" StatementProperty where
  type PropertyType "SqliMatchStatement" StatementProperty = SqliMatchStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty
        {sqliMatchStatement = Prelude.pure newValue, ..}
instance Property "XssMatchStatement" StatementProperty where
  type PropertyType "XssMatchStatement" StatementProperty = XssMatchStatementProperty
  set newValue StatementProperty {..}
    = StatementProperty {xssMatchStatement = Prelude.pure newValue, ..}