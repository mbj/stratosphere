module Stratosphere.WAFv2.WebACL.LabelMatchStatementProperty (
        LabelMatchStatementProperty(..), mkLabelMatchStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LabelMatchStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-labelmatchstatement.html>
    LabelMatchStatementProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-labelmatchstatement.html#cfn-wafv2-webacl-labelmatchstatement-key>
                                 key :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-labelmatchstatement.html#cfn-wafv2-webacl-labelmatchstatement-scope>
                                 scope :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLabelMatchStatementProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> LabelMatchStatementProperty
mkLabelMatchStatementProperty key scope
  = LabelMatchStatementProperty
      {haddock_workaround_ = (), key = key, scope = scope}
instance ToResourceProperties LabelMatchStatementProperty where
  toResourceProperties LabelMatchStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.LabelMatchStatement",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Scope" JSON..= scope]}
instance JSON.ToJSON LabelMatchStatementProperty where
  toJSON LabelMatchStatementProperty {..}
    = JSON.object ["Key" JSON..= key, "Scope" JSON..= scope]
instance Property "Key" LabelMatchStatementProperty where
  type PropertyType "Key" LabelMatchStatementProperty = Value Prelude.Text
  set newValue LabelMatchStatementProperty {..}
    = LabelMatchStatementProperty {key = newValue, ..}
instance Property "Scope" LabelMatchStatementProperty where
  type PropertyType "Scope" LabelMatchStatementProperty = Value Prelude.Text
  set newValue LabelMatchStatementProperty {..}
    = LabelMatchStatementProperty {scope = newValue, ..}