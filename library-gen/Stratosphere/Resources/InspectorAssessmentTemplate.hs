{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html

module Stratosphere.Resources.InspectorAssessmentTemplate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for InspectorAssessmentTemplate. See
-- 'inspectorAssessmentTemplate' for a more convenient constructor.
data InspectorAssessmentTemplate =
  InspectorAssessmentTemplate
  { _inspectorAssessmentTemplateAssessmentTargetArn :: Val Text
  , _inspectorAssessmentTemplateAssessmentTemplateName :: Maybe (Val Text)
  , _inspectorAssessmentTemplateDurationInSeconds :: Val Integer
  , _inspectorAssessmentTemplateRulesPackageArns :: ValList Text
  , _inspectorAssessmentTemplateUserAttributesForFindings :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties InspectorAssessmentTemplate where
  toResourceProperties InspectorAssessmentTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Inspector::AssessmentTemplate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AssessmentTargetArn",) . toJSON) _inspectorAssessmentTemplateAssessmentTargetArn
        , fmap (("AssessmentTemplateName",) . toJSON) _inspectorAssessmentTemplateAssessmentTemplateName
        , (Just . ("DurationInSeconds",) . toJSON) _inspectorAssessmentTemplateDurationInSeconds
        , (Just . ("RulesPackageArns",) . toJSON) _inspectorAssessmentTemplateRulesPackageArns
        , fmap (("UserAttributesForFindings",) . toJSON) _inspectorAssessmentTemplateUserAttributesForFindings
        ]
    }

-- | Constructor for 'InspectorAssessmentTemplate' containing required fields
-- as arguments.
inspectorAssessmentTemplate
  :: Val Text -- ^ 'iatAssessmentTargetArn'
  -> Val Integer -- ^ 'iatDurationInSeconds'
  -> ValList Text -- ^ 'iatRulesPackageArns'
  -> InspectorAssessmentTemplate
inspectorAssessmentTemplate assessmentTargetArnarg durationInSecondsarg rulesPackageArnsarg =
  InspectorAssessmentTemplate
  { _inspectorAssessmentTemplateAssessmentTargetArn = assessmentTargetArnarg
  , _inspectorAssessmentTemplateAssessmentTemplateName = Nothing
  , _inspectorAssessmentTemplateDurationInSeconds = durationInSecondsarg
  , _inspectorAssessmentTemplateRulesPackageArns = rulesPackageArnsarg
  , _inspectorAssessmentTemplateUserAttributesForFindings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-assessmenttargetarn
iatAssessmentTargetArn :: Lens' InspectorAssessmentTemplate (Val Text)
iatAssessmentTargetArn = lens _inspectorAssessmentTemplateAssessmentTargetArn (\s a -> s { _inspectorAssessmentTemplateAssessmentTargetArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-assessmenttemplatename
iatAssessmentTemplateName :: Lens' InspectorAssessmentTemplate (Maybe (Val Text))
iatAssessmentTemplateName = lens _inspectorAssessmentTemplateAssessmentTemplateName (\s a -> s { _inspectorAssessmentTemplateAssessmentTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-durationinseconds
iatDurationInSeconds :: Lens' InspectorAssessmentTemplate (Val Integer)
iatDurationInSeconds = lens _inspectorAssessmentTemplateDurationInSeconds (\s a -> s { _inspectorAssessmentTemplateDurationInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-rulespackagearns
iatRulesPackageArns :: Lens' InspectorAssessmentTemplate (ValList Text)
iatRulesPackageArns = lens _inspectorAssessmentTemplateRulesPackageArns (\s a -> s { _inspectorAssessmentTemplateRulesPackageArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-assessmenttemplate.html#cfn-inspector-assessmenttemplate-userattributesforfindings
iatUserAttributesForFindings :: Lens' InspectorAssessmentTemplate (Maybe [Tag])
iatUserAttributesForFindings = lens _inspectorAssessmentTemplateUserAttributesForFindings (\s a -> s { _inspectorAssessmentTemplateUserAttributesForFindings = a })
