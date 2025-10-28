module Stratosphere.Pipes.Pipe.EcsEnvironmentVariableProperty (
        EcsEnvironmentVariableProperty(..),
        mkEcsEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsEnvironmentVariableProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsenvironmentvariable.html>
    EcsEnvironmentVariableProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsenvironmentvariable.html#cfn-pipes-pipe-ecsenvironmentvariable-name>
                                    name :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsenvironmentvariable.html#cfn-pipes-pipe-ecsenvironmentvariable-value>
                                    value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsEnvironmentVariableProperty :: EcsEnvironmentVariableProperty
mkEcsEnvironmentVariableProperty
  = EcsEnvironmentVariableProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties EcsEnvironmentVariableProperty where
  toResourceProperties EcsEnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsEnvironmentVariable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EcsEnvironmentVariableProperty where
  toJSON EcsEnvironmentVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" EcsEnvironmentVariableProperty where
  type PropertyType "Name" EcsEnvironmentVariableProperty = Value Prelude.Text
  set newValue EcsEnvironmentVariableProperty {..}
    = EcsEnvironmentVariableProperty {name = Prelude.pure newValue, ..}
instance Property "Value" EcsEnvironmentVariableProperty where
  type PropertyType "Value" EcsEnvironmentVariableProperty = Value Prelude.Text
  set newValue EcsEnvironmentVariableProperty {..}
    = EcsEnvironmentVariableProperty
        {value = Prelude.pure newValue, ..}