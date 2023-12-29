module Stratosphere.Pipes.Pipe.BatchEnvironmentVariableProperty (
        BatchEnvironmentVariableProperty(..),
        mkBatchEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchEnvironmentVariableProperty
  = BatchEnvironmentVariableProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                                      value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchEnvironmentVariableProperty ::
  BatchEnvironmentVariableProperty
mkBatchEnvironmentVariableProperty
  = BatchEnvironmentVariableProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties BatchEnvironmentVariableProperty where
  toResourceProperties BatchEnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.BatchEnvironmentVariable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON BatchEnvironmentVariableProperty where
  toJSON BatchEnvironmentVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" BatchEnvironmentVariableProperty where
  type PropertyType "Name" BatchEnvironmentVariableProperty = Value Prelude.Text
  set newValue BatchEnvironmentVariableProperty {..}
    = BatchEnvironmentVariableProperty
        {name = Prelude.pure newValue, ..}
instance Property "Value" BatchEnvironmentVariableProperty where
  type PropertyType "Value" BatchEnvironmentVariableProperty = Value Prelude.Text
  set newValue BatchEnvironmentVariableProperty {..}
    = BatchEnvironmentVariableProperty
        {value = Prelude.pure newValue, ..}