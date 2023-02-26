module Stratosphere.Inspector.AssessmentTemplate (
        AssessmentTemplate(..), mkAssessmentTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AssessmentTemplate
  = AssessmentTemplate {assessmentTargetArn :: (Value Prelude.Text),
                        assessmentTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                        durationInSeconds :: (Value Prelude.Integer),
                        rulesPackageArns :: (ValueList Prelude.Text),
                        userAttributesForFindings :: (Prelude.Maybe [Tag])}
mkAssessmentTemplate ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> ValueList Prelude.Text -> AssessmentTemplate
mkAssessmentTemplate
  assessmentTargetArn
  durationInSeconds
  rulesPackageArns
  = AssessmentTemplate
      {assessmentTargetArn = assessmentTargetArn,
       durationInSeconds = durationInSeconds,
       rulesPackageArns = rulesPackageArns,
       assessmentTemplateName = Prelude.Nothing,
       userAttributesForFindings = Prelude.Nothing}
instance ToResourceProperties AssessmentTemplate where
  toResourceProperties AssessmentTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Inspector::AssessmentTemplate",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AssessmentTargetArn" JSON..= assessmentTargetArn,
                            "DurationInSeconds" JSON..= durationInSeconds,
                            "RulesPackageArns" JSON..= rulesPackageArns]
                           (Prelude.catMaybes
                              [(JSON..=) "AssessmentTemplateName"
                                 Prelude.<$> assessmentTemplateName,
                               (JSON..=) "UserAttributesForFindings"
                                 Prelude.<$> userAttributesForFindings]))}
instance JSON.ToJSON AssessmentTemplate where
  toJSON AssessmentTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AssessmentTargetArn" JSON..= assessmentTargetArn,
               "DurationInSeconds" JSON..= durationInSeconds,
               "RulesPackageArns" JSON..= rulesPackageArns]
              (Prelude.catMaybes
                 [(JSON..=) "AssessmentTemplateName"
                    Prelude.<$> assessmentTemplateName,
                  (JSON..=) "UserAttributesForFindings"
                    Prelude.<$> userAttributesForFindings])))
instance Property "AssessmentTargetArn" AssessmentTemplate where
  type PropertyType "AssessmentTargetArn" AssessmentTemplate = Value Prelude.Text
  set newValue AssessmentTemplate {..}
    = AssessmentTemplate {assessmentTargetArn = newValue, ..}
instance Property "AssessmentTemplateName" AssessmentTemplate where
  type PropertyType "AssessmentTemplateName" AssessmentTemplate = Value Prelude.Text
  set newValue AssessmentTemplate {..}
    = AssessmentTemplate
        {assessmentTemplateName = Prelude.pure newValue, ..}
instance Property "DurationInSeconds" AssessmentTemplate where
  type PropertyType "DurationInSeconds" AssessmentTemplate = Value Prelude.Integer
  set newValue AssessmentTemplate {..}
    = AssessmentTemplate {durationInSeconds = newValue, ..}
instance Property "RulesPackageArns" AssessmentTemplate where
  type PropertyType "RulesPackageArns" AssessmentTemplate = ValueList Prelude.Text
  set newValue AssessmentTemplate {..}
    = AssessmentTemplate {rulesPackageArns = newValue, ..}
instance Property "UserAttributesForFindings" AssessmentTemplate where
  type PropertyType "UserAttributesForFindings" AssessmentTemplate = [Tag]
  set newValue AssessmentTemplate {..}
    = AssessmentTemplate
        {userAttributesForFindings = Prelude.pure newValue, ..}