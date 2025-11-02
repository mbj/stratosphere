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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html>
    AssessmentTemplate {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-assessmenttargetarn>
                        assessmentTargetArn :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-assessmenttemplatename>
                        assessmentTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-durationinseconds>
                        durationInSeconds :: (Value Prelude.Integer),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-rulespackagearns>
                        rulesPackageArns :: (ValueList Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-userattributesforfindings>
                        userAttributesForFindings :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssessmentTemplate ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> ValueList Prelude.Text -> AssessmentTemplate
mkAssessmentTemplate
  assessmentTargetArn
  durationInSeconds
  rulesPackageArns
  = AssessmentTemplate
      {haddock_workaround_ = (),
       assessmentTargetArn = assessmentTargetArn,
       durationInSeconds = durationInSeconds,
       rulesPackageArns = rulesPackageArns,
       assessmentTemplateName = Prelude.Nothing,
       userAttributesForFindings = Prelude.Nothing}
instance ToResourceProperties AssessmentTemplate where
  toResourceProperties AssessmentTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Inspector::AssessmentTemplate",
         supportsTags = Prelude.False,
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