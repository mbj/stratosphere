module Stratosphere.WAFv2.WebACL.OrStatementProperty (
        module Exports, OrStatementProperty(..), mkOrStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.StatementProperty as Exports
import Stratosphere.ResourceProperties
data OrStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatement.html>
    OrStatementProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatement.html#cfn-wafv2-webacl-orstatement-statements>
                         statements :: [StatementProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrStatementProperty :: [StatementProperty] -> OrStatementProperty
mkOrStatementProperty statements
  = OrStatementProperty
      {haddock_workaround_ = (), statements = statements}
instance ToResourceProperties OrStatementProperty where
  toResourceProperties OrStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.OrStatement",
         supportsTags = Prelude.False,
         properties = ["Statements" JSON..= statements]}
instance JSON.ToJSON OrStatementProperty where
  toJSON OrStatementProperty {..}
    = JSON.object ["Statements" JSON..= statements]
instance Property "Statements" OrStatementProperty where
  type PropertyType "Statements" OrStatementProperty = [StatementProperty]
  set newValue OrStatementProperty {..}
    = OrStatementProperty {statements = newValue, ..}