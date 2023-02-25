module Stratosphere.Batch.JobDefinition.EksContainerEnvironmentVariableProperty (
        EksContainerEnvironmentVariableProperty(..),
        mkEksContainerEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksContainerEnvironmentVariableProperty
  = EksContainerEnvironmentVariableProperty {name :: (Value Prelude.Text),
                                             value :: (Prelude.Maybe (Value Prelude.Text))}
mkEksContainerEnvironmentVariableProperty ::
  Value Prelude.Text -> EksContainerEnvironmentVariableProperty
mkEksContainerEnvironmentVariableProperty name
  = EksContainerEnvironmentVariableProperty
      {name = name, value = Prelude.Nothing}
instance ToResourceProperties EksContainerEnvironmentVariableProperty where
  toResourceProperties EksContainerEnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksContainerEnvironmentVariable",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON EksContainerEnvironmentVariableProperty where
  toJSON EksContainerEnvironmentVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Name" EksContainerEnvironmentVariableProperty where
  type PropertyType "Name" EksContainerEnvironmentVariableProperty = Value Prelude.Text
  set newValue EksContainerEnvironmentVariableProperty {..}
    = EksContainerEnvironmentVariableProperty {name = newValue, ..}
instance Property "Value" EksContainerEnvironmentVariableProperty where
  type PropertyType "Value" EksContainerEnvironmentVariableProperty = Value Prelude.Text
  set newValue EksContainerEnvironmentVariableProperty {..}
    = EksContainerEnvironmentVariableProperty
        {value = Prelude.pure newValue, ..}