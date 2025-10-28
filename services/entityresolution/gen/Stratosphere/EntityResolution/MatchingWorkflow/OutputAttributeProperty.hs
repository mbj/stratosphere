module Stratosphere.EntityResolution.MatchingWorkflow.OutputAttributeProperty (
        OutputAttributeProperty(..), mkOutputAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-outputattribute.html>
    OutputAttributeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-outputattribute.html#cfn-entityresolution-matchingworkflow-outputattribute-hashed>
                             hashed :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-outputattribute.html#cfn-entityresolution-matchingworkflow-outputattribute-name>
                             name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputAttributeProperty ::
  Value Prelude.Text -> OutputAttributeProperty
mkOutputAttributeProperty name
  = OutputAttributeProperty
      {haddock_workaround_ = (), name = name, hashed = Prelude.Nothing}
instance ToResourceProperties OutputAttributeProperty where
  toResourceProperties OutputAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.OutputAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Hashed" Prelude.<$> hashed]))}
instance JSON.ToJSON OutputAttributeProperty where
  toJSON OutputAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Hashed" Prelude.<$> hashed])))
instance Property "Hashed" OutputAttributeProperty where
  type PropertyType "Hashed" OutputAttributeProperty = Value Prelude.Bool
  set newValue OutputAttributeProperty {..}
    = OutputAttributeProperty {hashed = Prelude.pure newValue, ..}
instance Property "Name" OutputAttributeProperty where
  type PropertyType "Name" OutputAttributeProperty = Value Prelude.Text
  set newValue OutputAttributeProperty {..}
    = OutputAttributeProperty {name = newValue, ..}