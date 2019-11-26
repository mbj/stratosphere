{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformation where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupTextTransformation. See
-- 'waFv2RuleGroupTextTransformation' for a more convenient constructor.
data WAFv2RuleGroupTextTransformation =
  WAFv2RuleGroupTextTransformation
  { _wAFv2RuleGroupTextTransformationPriority :: Maybe (Val Integer)
  , _wAFv2RuleGroupTextTransformationType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupTextTransformation where
  toJSON WAFv2RuleGroupTextTransformation{..} =
    object $
    catMaybes
    [ fmap (("Priority",) . toJSON) _wAFv2RuleGroupTextTransformationPriority
    , fmap (("Type",) . toJSON) _wAFv2RuleGroupTextTransformationType
    ]

-- | Constructor for 'WAFv2RuleGroupTextTransformation' containing required
-- fields as arguments.
waFv2RuleGroupTextTransformation
  :: WAFv2RuleGroupTextTransformation
waFv2RuleGroupTextTransformation  =
  WAFv2RuleGroupTextTransformation
  { _wAFv2RuleGroupTextTransformationPriority = Nothing
  , _wAFv2RuleGroupTextTransformationType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html#cfn-wafv2-rulegroup-texttransformation-priority
wafrgttPriority :: Lens' WAFv2RuleGroupTextTransformation (Maybe (Val Integer))
wafrgttPriority = lens _wAFv2RuleGroupTextTransformationPriority (\s a -> s { _wAFv2RuleGroupTextTransformationPriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformation.html#cfn-wafv2-rulegroup-texttransformation-type
wafrgttType :: Lens' WAFv2RuleGroupTextTransformation (Maybe (Val Text))
wafrgttType = lens _wAFv2RuleGroupTextTransformationType (\s a -> s { _wAFv2RuleGroupTextTransformationType = a })
