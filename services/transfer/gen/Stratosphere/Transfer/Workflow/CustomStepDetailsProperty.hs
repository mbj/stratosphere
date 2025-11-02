module Stratosphere.Transfer.Workflow.CustomStepDetailsProperty (
        CustomStepDetailsProperty(..), mkCustomStepDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomStepDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-customstepdetails.html>
    CustomStepDetailsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-customstepdetails.html#cfn-transfer-workflow-customstepdetails-name>
                               name :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-customstepdetails.html#cfn-transfer-workflow-customstepdetails-sourcefilelocation>
                               sourceFileLocation :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-customstepdetails.html#cfn-transfer-workflow-customstepdetails-target>
                               target :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-workflow-customstepdetails.html#cfn-transfer-workflow-customstepdetails-timeoutseconds>
                               timeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomStepDetailsProperty :: CustomStepDetailsProperty
mkCustomStepDetailsProperty
  = CustomStepDetailsProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       sourceFileLocation = Prelude.Nothing, target = Prelude.Nothing,
       timeoutSeconds = Prelude.Nothing}
instance ToResourceProperties CustomStepDetailsProperty where
  toResourceProperties CustomStepDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.CustomStepDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation,
                            (JSON..=) "Target" Prelude.<$> target,
                            (JSON..=) "TimeoutSeconds" Prelude.<$> timeoutSeconds])}
instance JSON.ToJSON CustomStepDetailsProperty where
  toJSON CustomStepDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation,
               (JSON..=) "Target" Prelude.<$> target,
               (JSON..=) "TimeoutSeconds" Prelude.<$> timeoutSeconds]))
instance Property "Name" CustomStepDetailsProperty where
  type PropertyType "Name" CustomStepDetailsProperty = Value Prelude.Text
  set newValue CustomStepDetailsProperty {..}
    = CustomStepDetailsProperty {name = Prelude.pure newValue, ..}
instance Property "SourceFileLocation" CustomStepDetailsProperty where
  type PropertyType "SourceFileLocation" CustomStepDetailsProperty = Value Prelude.Text
  set newValue CustomStepDetailsProperty {..}
    = CustomStepDetailsProperty
        {sourceFileLocation = Prelude.pure newValue, ..}
instance Property "Target" CustomStepDetailsProperty where
  type PropertyType "Target" CustomStepDetailsProperty = Value Prelude.Text
  set newValue CustomStepDetailsProperty {..}
    = CustomStepDetailsProperty {target = Prelude.pure newValue, ..}
instance Property "TimeoutSeconds" CustomStepDetailsProperty where
  type PropertyType "TimeoutSeconds" CustomStepDetailsProperty = Value Prelude.Integer
  set newValue CustomStepDetailsProperty {..}
    = CustomStepDetailsProperty
        {timeoutSeconds = Prelude.pure newValue, ..}