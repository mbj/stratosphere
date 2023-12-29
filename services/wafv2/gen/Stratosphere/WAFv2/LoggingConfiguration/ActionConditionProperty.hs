module Stratosphere.WAFv2.LoggingConfiguration.ActionConditionProperty (
        ActionConditionProperty(..), mkActionConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionConditionProperty
  = ActionConditionProperty {action :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionConditionProperty ::
  Value Prelude.Text -> ActionConditionProperty
mkActionConditionProperty action
  = ActionConditionProperty {action = action}
instance ToResourceProperties ActionConditionProperty where
  toResourceProperties ActionConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.ActionCondition",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action]}
instance JSON.ToJSON ActionConditionProperty where
  toJSON ActionConditionProperty {..}
    = JSON.object ["Action" JSON..= action]
instance Property "Action" ActionConditionProperty where
  type PropertyType "Action" ActionConditionProperty = Value Prelude.Text
  set newValue ActionConditionProperty {}
    = ActionConditionProperty {action = newValue, ..}