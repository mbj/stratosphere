module Stratosphere.Transfer.Workflow.DeleteStepDetailsProperty (
        DeleteStepDetailsProperty(..), mkDeleteStepDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeleteStepDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-deletestepdetails.html>
    DeleteStepDetailsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-deletestepdetails.html#cfn-transfer-workflow-deletestepdetails-name>
                               name :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-deletestepdetails.html#cfn-transfer-workflow-deletestepdetails-sourcefilelocation>
                               sourceFileLocation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeleteStepDetailsProperty :: DeleteStepDetailsProperty
mkDeleteStepDetailsProperty
  = DeleteStepDetailsProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       sourceFileLocation = Prelude.Nothing}
instance ToResourceProperties DeleteStepDetailsProperty where
  toResourceProperties DeleteStepDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.DeleteStepDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation])}
instance JSON.ToJSON DeleteStepDetailsProperty where
  toJSON DeleteStepDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation]))
instance Property "Name" DeleteStepDetailsProperty where
  type PropertyType "Name" DeleteStepDetailsProperty = Value Prelude.Text
  set newValue DeleteStepDetailsProperty {..}
    = DeleteStepDetailsProperty {name = Prelude.pure newValue, ..}
instance Property "SourceFileLocation" DeleteStepDetailsProperty where
  type PropertyType "SourceFileLocation" DeleteStepDetailsProperty = Value Prelude.Text
  set newValue DeleteStepDetailsProperty {..}
    = DeleteStepDetailsProperty
        {sourceFileLocation = Prelude.pure newValue, ..}