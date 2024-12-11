module Stratosphere.Bedrock.Guardrail.PiiEntityConfigProperty (
        PiiEntityConfigProperty(..), mkPiiEntityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PiiEntityConfigProperty
  = PiiEntityConfigProperty {action :: (Value Prelude.Text),
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPiiEntityConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> PiiEntityConfigProperty
mkPiiEntityConfigProperty action type'
  = PiiEntityConfigProperty {action = action, type' = type'}
instance ToResourceProperties PiiEntityConfigProperty where
  toResourceProperties PiiEntityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.PiiEntityConfig",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action, "Type" JSON..= type']}
instance JSON.ToJSON PiiEntityConfigProperty where
  toJSON PiiEntityConfigProperty {..}
    = JSON.object ["Action" JSON..= action, "Type" JSON..= type']
instance Property "Action" PiiEntityConfigProperty where
  type PropertyType "Action" PiiEntityConfigProperty = Value Prelude.Text
  set newValue PiiEntityConfigProperty {..}
    = PiiEntityConfigProperty {action = newValue, ..}
instance Property "Type" PiiEntityConfigProperty where
  type PropertyType "Type" PiiEntityConfigProperty = Value Prelude.Text
  set newValue PiiEntityConfigProperty {..}
    = PiiEntityConfigProperty {type' = newValue, ..}