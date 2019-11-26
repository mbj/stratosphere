{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformations.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformations where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformation

-- | Full data type definition for WAFv2RuleGroupTextTransformations. See
-- 'waFv2RuleGroupTextTransformations' for a more convenient constructor.
data WAFv2RuleGroupTextTransformations =
  WAFv2RuleGroupTextTransformations
  { _wAFv2RuleGroupTextTransformationsTextTransformations :: Maybe [WAFv2RuleGroupTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupTextTransformations where
  toJSON WAFv2RuleGroupTextTransformations{..} =
    object $
    catMaybes
    [ fmap (("TextTransformations",) . toJSON) _wAFv2RuleGroupTextTransformationsTextTransformations
    ]

-- | Constructor for 'WAFv2RuleGroupTextTransformations' containing required
-- fields as arguments.
waFv2RuleGroupTextTransformations
  :: WAFv2RuleGroupTextTransformations
waFv2RuleGroupTextTransformations  =
  WAFv2RuleGroupTextTransformations
  { _wAFv2RuleGroupTextTransformationsTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-texttransformations.html#cfn-wafv2-rulegroup-texttransformations-texttransformations
wafrgttTextTransformations :: Lens' WAFv2RuleGroupTextTransformations (Maybe [WAFv2RuleGroupTextTransformation])
wafrgttTextTransformations = lens _wAFv2RuleGroupTextTransformationsTextTransformations (\s a -> s { _wAFv2RuleGroupTextTransformationsTextTransformations = a })
