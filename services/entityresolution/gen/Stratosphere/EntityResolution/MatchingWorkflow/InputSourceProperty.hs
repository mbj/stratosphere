module Stratosphere.EntityResolution.MatchingWorkflow.InputSourceProperty (
        InputSourceProperty(..), mkInputSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-inputsource.html>
    InputSourceProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-inputsource.html#cfn-entityresolution-matchingworkflow-inputsource-applynormalization>
                         applyNormalization :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-inputsource.html#cfn-entityresolution-matchingworkflow-inputsource-inputsourcearn>
                         inputSourceARN :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-inputsource.html#cfn-entityresolution-matchingworkflow-inputsource-schemaarn>
                         schemaArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputSourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> InputSourceProperty
mkInputSourceProperty inputSourceARN schemaArn
  = InputSourceProperty
      {haddock_workaround_ = (), inputSourceARN = inputSourceARN,
       schemaArn = schemaArn, applyNormalization = Prelude.Nothing}
instance ToResourceProperties InputSourceProperty where
  toResourceProperties InputSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.InputSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputSourceARN" JSON..= inputSourceARN,
                            "SchemaArn" JSON..= schemaArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplyNormalization" Prelude.<$> applyNormalization]))}
instance JSON.ToJSON InputSourceProperty where
  toJSON InputSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputSourceARN" JSON..= inputSourceARN,
               "SchemaArn" JSON..= schemaArn]
              (Prelude.catMaybes
                 [(JSON..=) "ApplyNormalization" Prelude.<$> applyNormalization])))
instance Property "ApplyNormalization" InputSourceProperty where
  type PropertyType "ApplyNormalization" InputSourceProperty = Value Prelude.Bool
  set newValue InputSourceProperty {..}
    = InputSourceProperty
        {applyNormalization = Prelude.pure newValue, ..}
instance Property "InputSourceARN" InputSourceProperty where
  type PropertyType "InputSourceARN" InputSourceProperty = Value Prelude.Text
  set newValue InputSourceProperty {..}
    = InputSourceProperty {inputSourceARN = newValue, ..}
instance Property "SchemaArn" InputSourceProperty where
  type PropertyType "SchemaArn" InputSourceProperty = Value Prelude.Text
  set newValue InputSourceProperty {..}
    = InputSourceProperty {schemaArn = newValue, ..}