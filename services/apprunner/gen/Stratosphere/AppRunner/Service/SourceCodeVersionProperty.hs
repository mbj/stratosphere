module Stratosphere.AppRunner.Service.SourceCodeVersionProperty (
        SourceCodeVersionProperty(..), mkSourceCodeVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceCodeVersionProperty
  = SourceCodeVersionProperty {type' :: (Value Prelude.Text),
                               value :: (Value Prelude.Text)}
mkSourceCodeVersionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SourceCodeVersionProperty
mkSourceCodeVersionProperty type' value
  = SourceCodeVersionProperty {type' = type', value = value}
instance ToResourceProperties SourceCodeVersionProperty where
  toResourceProperties SourceCodeVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.SourceCodeVersion",
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON SourceCodeVersionProperty where
  toJSON SourceCodeVersionProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" SourceCodeVersionProperty where
  type PropertyType "Type" SourceCodeVersionProperty = Value Prelude.Text
  set newValue SourceCodeVersionProperty {..}
    = SourceCodeVersionProperty {type' = newValue, ..}
instance Property "Value" SourceCodeVersionProperty where
  type PropertyType "Value" SourceCodeVersionProperty = Value Prelude.Text
  set newValue SourceCodeVersionProperty {..}
    = SourceCodeVersionProperty {value = newValue, ..}