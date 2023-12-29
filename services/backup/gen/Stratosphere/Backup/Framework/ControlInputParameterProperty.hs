module Stratosphere.Backup.Framework.ControlInputParameterProperty (
        ControlInputParameterProperty(..), mkControlInputParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ControlInputParameterProperty
  = ControlInputParameterProperty {parameterName :: (Value Prelude.Text),
                                   parameterValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkControlInputParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ControlInputParameterProperty
mkControlInputParameterProperty parameterName parameterValue
  = ControlInputParameterProperty
      {parameterName = parameterName, parameterValue = parameterValue}
instance ToResourceProperties ControlInputParameterProperty where
  toResourceProperties ControlInputParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::Framework.ControlInputParameter",
         supportsTags = Prelude.False,
         properties = ["ParameterName" JSON..= parameterName,
                       "ParameterValue" JSON..= parameterValue]}
instance JSON.ToJSON ControlInputParameterProperty where
  toJSON ControlInputParameterProperty {..}
    = JSON.object
        ["ParameterName" JSON..= parameterName,
         "ParameterValue" JSON..= parameterValue]
instance Property "ParameterName" ControlInputParameterProperty where
  type PropertyType "ParameterName" ControlInputParameterProperty = Value Prelude.Text
  set newValue ControlInputParameterProperty {..}
    = ControlInputParameterProperty {parameterName = newValue, ..}
instance Property "ParameterValue" ControlInputParameterProperty where
  type PropertyType "ParameterValue" ControlInputParameterProperty = Value Prelude.Text
  set newValue ControlInputParameterProperty {..}
    = ControlInputParameterProperty {parameterValue = newValue, ..}