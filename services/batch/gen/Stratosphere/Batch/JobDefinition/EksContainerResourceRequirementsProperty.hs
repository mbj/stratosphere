module Stratosphere.Batch.JobDefinition.EksContainerResourceRequirementsProperty (
        EksContainerResourceRequirementsProperty(..),
        mkEksContainerResourceRequirementsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksContainerResourceRequirementsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainerresourcerequirements.html>
    EksContainerResourceRequirementsProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainerresourcerequirements.html#cfn-batch-jobdefinition-ekscontainerresourcerequirements-limits>
                                              limits :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainerresourcerequirements.html#cfn-batch-jobdefinition-ekscontainerresourcerequirements-requests>
                                              requests :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksContainerResourceRequirementsProperty ::
  EksContainerResourceRequirementsProperty
mkEksContainerResourceRequirementsProperty
  = EksContainerResourceRequirementsProperty
      {haddock_workaround_ = (), limits = Prelude.Nothing,
       requests = Prelude.Nothing}
instance ToResourceProperties EksContainerResourceRequirementsProperty where
  toResourceProperties EksContainerResourceRequirementsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksContainerResourceRequirements",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Limits" Prelude.<$> limits,
                            (JSON..=) "Requests" Prelude.<$> requests])}
instance JSON.ToJSON EksContainerResourceRequirementsProperty where
  toJSON EksContainerResourceRequirementsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Limits" Prelude.<$> limits,
               (JSON..=) "Requests" Prelude.<$> requests]))
instance Property "Limits" EksContainerResourceRequirementsProperty where
  type PropertyType "Limits" EksContainerResourceRequirementsProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue EksContainerResourceRequirementsProperty {..}
    = EksContainerResourceRequirementsProperty
        {limits = Prelude.pure newValue, ..}
instance Property "Requests" EksContainerResourceRequirementsProperty where
  type PropertyType "Requests" EksContainerResourceRequirementsProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue EksContainerResourceRequirementsProperty {..}
    = EksContainerResourceRequirementsProperty
        {requests = Prelude.pure newValue, ..}