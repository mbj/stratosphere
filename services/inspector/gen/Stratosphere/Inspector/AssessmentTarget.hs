module Stratosphere.Inspector.AssessmentTarget (
        AssessmentTarget(..), mkAssessmentTarget
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssessmentTarget
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html>
    AssessmentTarget {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html#cfn-inspector-assessmenttarget-assessmenttargetname>
                      assessmentTargetName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttarget.html#cfn-inspector-assessmenttarget-resourcegrouparn>
                      resourceGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssessmentTarget :: AssessmentTarget
mkAssessmentTarget
  = AssessmentTarget
      {haddock_workaround_ = (), assessmentTargetName = Prelude.Nothing,
       resourceGroupArn = Prelude.Nothing}
instance ToResourceProperties AssessmentTarget where
  toResourceProperties AssessmentTarget {..}
    = ResourceProperties
        {awsType = "AWS::Inspector::AssessmentTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssessmentTargetName" Prelude.<$> assessmentTargetName,
                            (JSON..=) "ResourceGroupArn" Prelude.<$> resourceGroupArn])}
instance JSON.ToJSON AssessmentTarget where
  toJSON AssessmentTarget {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssessmentTargetName" Prelude.<$> assessmentTargetName,
               (JSON..=) "ResourceGroupArn" Prelude.<$> resourceGroupArn]))
instance Property "AssessmentTargetName" AssessmentTarget where
  type PropertyType "AssessmentTargetName" AssessmentTarget = Value Prelude.Text
  set newValue AssessmentTarget {..}
    = AssessmentTarget
        {assessmentTargetName = Prelude.pure newValue, ..}
instance Property "ResourceGroupArn" AssessmentTarget where
  type PropertyType "ResourceGroupArn" AssessmentTarget = Value Prelude.Text
  set newValue AssessmentTarget {..}
    = AssessmentTarget {resourceGroupArn = Prelude.pure newValue, ..}