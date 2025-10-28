module Stratosphere.Batch.JobDefinition.ResourceRequirementProperty (
        ResourceRequirementProperty(..), mkResourceRequirementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceRequirementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html>
    ResourceRequirementProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html#cfn-batch-jobdefinition-resourcerequirement-type>
                                 type' :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html#cfn-batch-jobdefinition-resourcerequirement-value>
                                 value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceRequirementProperty :: ResourceRequirementProperty
mkResourceRequirementProperty
  = ResourceRequirementProperty
      {haddock_workaround_ = (), type' = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ResourceRequirementProperty where
  toResourceProperties ResourceRequirementProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.ResourceRequirement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ResourceRequirementProperty where
  toJSON ResourceRequirementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Type" ResourceRequirementProperty where
  type PropertyType "Type" ResourceRequirementProperty = Value Prelude.Text
  set newValue ResourceRequirementProperty {..}
    = ResourceRequirementProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" ResourceRequirementProperty where
  type PropertyType "Value" ResourceRequirementProperty = Value Prelude.Text
  set newValue ResourceRequirementProperty {..}
    = ResourceRequirementProperty {value = Prelude.pure newValue, ..}