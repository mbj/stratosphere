module Stratosphere.Amplify.Branch.EnvironmentVariableProperty (
        EnvironmentVariableProperty(..), mkEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentVariableProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html>
    EnvironmentVariableProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html#cfn-amplify-branch-environmentvariable-name>
                                 name :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html#cfn-amplify-branch-environmentvariable-value>
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentVariableProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EnvironmentVariableProperty
mkEnvironmentVariableProperty name value
  = EnvironmentVariableProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties EnvironmentVariableProperty where
  toResourceProperties EnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Branch.EnvironmentVariable",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON EnvironmentVariableProperty where
  toJSON EnvironmentVariableProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" EnvironmentVariableProperty where
  type PropertyType "Name" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {name = newValue, ..}
instance Property "Value" EnvironmentVariableProperty where
  type PropertyType "Value" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {value = newValue, ..}