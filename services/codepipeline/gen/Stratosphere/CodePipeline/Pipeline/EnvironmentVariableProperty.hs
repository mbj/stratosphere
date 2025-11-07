module Stratosphere.CodePipeline.Pipeline.EnvironmentVariableProperty (
        EnvironmentVariableProperty(..), mkEnvironmentVariableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentVariableProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-environmentvariable.html>
    EnvironmentVariableProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-environmentvariable.html#cfn-codepipeline-pipeline-environmentvariable-name>
                                 name :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-environmentvariable.html#cfn-codepipeline-pipeline-environmentvariable-type>
                                 type' :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-environmentvariable.html#cfn-codepipeline-pipeline-environmentvariable-value>
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentVariableProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EnvironmentVariableProperty
mkEnvironmentVariableProperty name value
  = EnvironmentVariableProperty
      {haddock_workaround_ = (), name = name, value = value,
       type' = Prelude.Nothing}
instance ToResourceProperties EnvironmentVariableProperty where
  toResourceProperties EnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.EnvironmentVariable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Value" JSON..= value]
                           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON EnvironmentVariableProperty where
  toJSON EnvironmentVariableProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Value" JSON..= value]
              (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])))
instance Property "Name" EnvironmentVariableProperty where
  type PropertyType "Name" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {name = newValue, ..}
instance Property "Type" EnvironmentVariableProperty where
  type PropertyType "Type" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" EnvironmentVariableProperty where
  type PropertyType "Value" EnvironmentVariableProperty = Value Prelude.Text
  set newValue EnvironmentVariableProperty {..}
    = EnvironmentVariableProperty {value = newValue, ..}