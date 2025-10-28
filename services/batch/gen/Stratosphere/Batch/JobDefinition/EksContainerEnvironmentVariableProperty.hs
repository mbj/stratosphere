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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainerenvironmentvariable.html>
    EksContainerEnvironmentVariableProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainerenvironmentvariable.html#cfn-batch-jobdefinition-ekscontainerenvironmentvariable-name>
                                             name :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainerenvironmentvariable.html#cfn-batch-jobdefinition-ekscontainerenvironmentvariable-value>
                                             value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksContainerEnvironmentVariableProperty ::
  Value Prelude.Text -> EksContainerEnvironmentVariableProperty
mkEksContainerEnvironmentVariableProperty name
  = EksContainerEnvironmentVariableProperty
      {haddock_workaround_ = (), name = name, value = Prelude.Nothing}
instance ToResourceProperties EksContainerEnvironmentVariableProperty where
  toResourceProperties EksContainerEnvironmentVariableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksContainerEnvironmentVariable",
         supportsTags = Prelude.False,
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