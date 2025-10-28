module Stratosphere.WAFv2.WebACL.NotStatementProperty (
        module Exports, NotStatementProperty(..), mkNotStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.StatementProperty as Exports
import Stratosphere.ResourceProperties
data NotStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatement.html>
    NotStatementProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatement.html#cfn-wafv2-webacl-notstatement-statement>
                          statement :: StatementProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotStatementProperty :: StatementProperty -> NotStatementProperty
mkNotStatementProperty statement
  = NotStatementProperty
      {haddock_workaround_ = (), statement = statement}
instance ToResourceProperties NotStatementProperty where
  toResourceProperties NotStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.NotStatement",
         supportsTags = Prelude.False,
         properties = ["Statement" JSON..= statement]}
instance JSON.ToJSON NotStatementProperty where
  toJSON NotStatementProperty {..}
    = JSON.object ["Statement" JSON..= statement]
instance Property "Statement" NotStatementProperty where
  type PropertyType "Statement" NotStatementProperty = StatementProperty
  set newValue NotStatementProperty {..}
    = NotStatementProperty {statement = newValue, ..}