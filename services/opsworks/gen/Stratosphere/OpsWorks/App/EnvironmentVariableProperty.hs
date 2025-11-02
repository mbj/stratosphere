module Stratosphere.OpsWorks.App.EnvironmentVariableProperty (
        EnvironmentVariableProperty(..), mkEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentVariableProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html>
    EnvironmentVariableProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#cfn-opsworks-app-environment-key>
                                 key :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#cfn-opsworks-app-environment-secure>
                                 secure :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#value>
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentVariableProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EnvironmentVariableProperty
mkEnvironmentVariableProperty key value
  = EnvironmentVariableProperty
      {haddock_workaround_ = (), key = key, value = value,
       secure = Prelude.Nothing}
instance ToResourceProperties EnvironmentVariableProperty where
  toResourceProperties EnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::App.EnvironmentVariable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key, "Value" JSON..= value]
                           (Prelude.catMaybes [(JSON..=) "Secure" Prelude.<$> secure]))}
instance JSON.ToJSON EnvironmentVariableProperty where
  toJSON EnvironmentVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key, "Value" JSON..= value]
              (Prelude.catMaybes [(JSON..=) "Secure" Prelude.<$> secure])))
instance Property "Key" EnvironmentVariableProperty where
  type PropertyType "Key" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {key = newValue, ..}
instance Property "Secure" EnvironmentVariableProperty where
  type PropertyType "Secure" EnvironmentVariableProperty = Value Prelude.Bool
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {secure = Prelude.pure newValue, ..}
instance Property "Value" EnvironmentVariableProperty where
  type PropertyType "Value" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {value = newValue, ..}