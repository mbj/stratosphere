module Stratosphere.Lambda.Function.ImageConfigProperty (
        ImageConfigProperty(..), mkImageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageConfigProperty
  = ImageConfigProperty {command :: (Prelude.Maybe (ValueList Prelude.Text)),
                         entryPoint :: (Prelude.Maybe (ValueList Prelude.Text)),
                         workingDirectory :: (Prelude.Maybe (Value Prelude.Text))}
mkImageConfigProperty :: ImageConfigProperty
mkImageConfigProperty
  = ImageConfigProperty
      {command = Prelude.Nothing, entryPoint = Prelude.Nothing,
       workingDirectory = Prelude.Nothing}
instance ToResourceProperties ImageConfigProperty where
  toResourceProperties ImageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.ImageConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Command" Prelude.<$> command,
                            (JSON..=) "EntryPoint" Prelude.<$> entryPoint,
                            (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory])}
instance JSON.ToJSON ImageConfigProperty where
  toJSON ImageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Command" Prelude.<$> command,
               (JSON..=) "EntryPoint" Prelude.<$> entryPoint,
               (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory]))
instance Property "Command" ImageConfigProperty where
  type PropertyType "Command" ImageConfigProperty = ValueList Prelude.Text
  set newValue ImageConfigProperty {..}
    = ImageConfigProperty {command = Prelude.pure newValue, ..}
instance Property "EntryPoint" ImageConfigProperty where
  type PropertyType "EntryPoint" ImageConfigProperty = ValueList Prelude.Text
  set newValue ImageConfigProperty {..}
    = ImageConfigProperty {entryPoint = Prelude.pure newValue, ..}
instance Property "WorkingDirectory" ImageConfigProperty where
  type PropertyType "WorkingDirectory" ImageConfigProperty = Value Prelude.Text
  set newValue ImageConfigProperty {..}
    = ImageConfigProperty
        {workingDirectory = Prelude.pure newValue, ..}