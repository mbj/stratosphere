module Stratosphere.WAFv2.RuleGroup.AndStatementProperty (
        module Exports, AndStatementProperty(..), mkAndStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.StatementProperty as Exports
import Stratosphere.ResourceProperties
data AndStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatement.html>
    AndStatementProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-andstatement.html#cfn-wafv2-rulegroup-andstatement-statements>
                          statements :: [StatementProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAndStatementProperty ::
  [StatementProperty] -> AndStatementProperty
mkAndStatementProperty statements
  = AndStatementProperty
      {haddock_workaround_ = (), statements = statements}
instance ToResourceProperties AndStatementProperty where
  toResourceProperties AndStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.AndStatement",
         supportsTags = Prelude.False,
         properties = ["Statements" JSON..= statements]}
instance JSON.ToJSON AndStatementProperty where
  toJSON AndStatementProperty {..}
    = JSON.object ["Statements" JSON..= statements]
instance Property "Statements" AndStatementProperty where
  type PropertyType "Statements" AndStatementProperty = [StatementProperty]
  set newValue AndStatementProperty {..}
    = AndStatementProperty {statements = newValue, ..}