module Stratosphere.Logs.Transformer.UpperCaseStringProperty (
        UpperCaseStringProperty(..), mkUpperCaseStringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpperCaseStringProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-uppercasestring.html>
    UpperCaseStringProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-uppercasestring.html#cfn-logs-transformer-uppercasestring-withkeys>
                             withKeys :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpperCaseStringProperty ::
  ValueList Prelude.Text -> UpperCaseStringProperty
mkUpperCaseStringProperty withKeys
  = UpperCaseStringProperty
      {haddock_workaround_ = (), withKeys = withKeys}
instance ToResourceProperties UpperCaseStringProperty where
  toResourceProperties UpperCaseStringProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.UpperCaseString",
         supportsTags = Prelude.False,
         properties = ["WithKeys" JSON..= withKeys]}
instance JSON.ToJSON UpperCaseStringProperty where
  toJSON UpperCaseStringProperty {..}
    = JSON.object ["WithKeys" JSON..= withKeys]
instance Property "WithKeys" UpperCaseStringProperty where
  type PropertyType "WithKeys" UpperCaseStringProperty = ValueList Prelude.Text
  set newValue UpperCaseStringProperty {..}
    = UpperCaseStringProperty {withKeys = newValue, ..}