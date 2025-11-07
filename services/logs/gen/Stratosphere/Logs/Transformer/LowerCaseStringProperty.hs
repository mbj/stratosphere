module Stratosphere.Logs.Transformer.LowerCaseStringProperty (
        LowerCaseStringProperty(..), mkLowerCaseStringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LowerCaseStringProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-lowercasestring.html>
    LowerCaseStringProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-lowercasestring.html#cfn-logs-transformer-lowercasestring-withkeys>
                             withKeys :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLowerCaseStringProperty ::
  ValueList Prelude.Text -> LowerCaseStringProperty
mkLowerCaseStringProperty withKeys
  = LowerCaseStringProperty
      {haddock_workaround_ = (), withKeys = withKeys}
instance ToResourceProperties LowerCaseStringProperty where
  toResourceProperties LowerCaseStringProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.LowerCaseString",
         supportsTags = Prelude.False,
         properties = ["WithKeys" JSON..= withKeys]}
instance JSON.ToJSON LowerCaseStringProperty where
  toJSON LowerCaseStringProperty {..}
    = JSON.object ["WithKeys" JSON..= withKeys]
instance Property "WithKeys" LowerCaseStringProperty where
  type PropertyType "WithKeys" LowerCaseStringProperty = ValueList Prelude.Text
  set newValue LowerCaseStringProperty {..}
    = LowerCaseStringProperty {withKeys = newValue, ..}