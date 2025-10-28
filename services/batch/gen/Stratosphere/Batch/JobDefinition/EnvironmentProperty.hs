module Stratosphere.Batch.JobDefinition.EnvironmentProperty (
        EnvironmentProperty(..), mkEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-environment.html>
    EnvironmentProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-environment.html#cfn-batch-jobdefinition-environment-name>
                         name :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-environment.html#cfn-batch-jobdefinition-environment-value>
                         value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentProperty :: EnvironmentProperty
mkEnvironmentProperty
  = EnvironmentProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties EnvironmentProperty where
  toResourceProperties EnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Environment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EnvironmentProperty where
  toJSON EnvironmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" EnvironmentProperty where
  type PropertyType "Name" EnvironmentProperty = Value Prelude.Text
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {name = Prelude.pure newValue, ..}
instance Property "Value" EnvironmentProperty where
  type PropertyType "Value" EnvironmentProperty = Value Prelude.Text
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {value = Prelude.pure newValue, ..}