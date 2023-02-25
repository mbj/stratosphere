module Stratosphere.Inspector.AssessmentTarget (
        AssessmentTarget(..), mkAssessmentTarget
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssessmentTarget
  = AssessmentTarget {assessmentTargetName :: (Prelude.Maybe (Value Prelude.Text)),
                      resourceGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
mkAssessmentTarget :: AssessmentTarget
mkAssessmentTarget
  = AssessmentTarget
      {assessmentTargetName = Prelude.Nothing,
       resourceGroupArn = Prelude.Nothing}
instance ToResourceProperties AssessmentTarget where
  toResourceProperties AssessmentTarget {..}
    = ResourceProperties
        {awsType = "AWS::Inspector::AssessmentTarget",
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