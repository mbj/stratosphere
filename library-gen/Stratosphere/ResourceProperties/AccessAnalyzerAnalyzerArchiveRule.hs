{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-archiverule.html

module Stratosphere.ResourceProperties.AccessAnalyzerAnalyzerArchiveRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AccessAnalyzerAnalyzerFilter

-- | Full data type definition for AccessAnalyzerAnalyzerArchiveRule. See
-- 'accessAnalyzerAnalyzerArchiveRule' for a more convenient constructor.
data AccessAnalyzerAnalyzerArchiveRule =
  AccessAnalyzerAnalyzerArchiveRule
  { _accessAnalyzerAnalyzerArchiveRuleFilter :: [AccessAnalyzerAnalyzerFilter]
  , _accessAnalyzerAnalyzerArchiveRuleRuleName :: Val Text
  } deriving (Show, Eq)

instance ToJSON AccessAnalyzerAnalyzerArchiveRule where
  toJSON AccessAnalyzerAnalyzerArchiveRule{..} =
    object $
    catMaybes
    [ (Just . ("Filter",) . toJSON) _accessAnalyzerAnalyzerArchiveRuleFilter
    , (Just . ("RuleName",) . toJSON) _accessAnalyzerAnalyzerArchiveRuleRuleName
    ]

-- | Constructor for 'AccessAnalyzerAnalyzerArchiveRule' containing required
-- fields as arguments.
accessAnalyzerAnalyzerArchiveRule
  :: [AccessAnalyzerAnalyzerFilter] -- ^ 'aaaarFilter'
  -> Val Text -- ^ 'aaaarRuleName'
  -> AccessAnalyzerAnalyzerArchiveRule
accessAnalyzerAnalyzerArchiveRule filterarg ruleNamearg =
  AccessAnalyzerAnalyzerArchiveRule
  { _accessAnalyzerAnalyzerArchiveRuleFilter = filterarg
  , _accessAnalyzerAnalyzerArchiveRuleRuleName = ruleNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-archiverule.html#cfn-accessanalyzer-analyzer-archiverule-filter
aaaarFilter :: Lens' AccessAnalyzerAnalyzerArchiveRule [AccessAnalyzerAnalyzerFilter]
aaaarFilter = lens _accessAnalyzerAnalyzerArchiveRuleFilter (\s a -> s { _accessAnalyzerAnalyzerArchiveRuleFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-archiverule.html#cfn-accessanalyzer-analyzer-archiverule-rulename
aaaarRuleName :: Lens' AccessAnalyzerAnalyzerArchiveRule (Val Text)
aaaarRuleName = lens _accessAnalyzerAnalyzerArchiveRuleRuleName (\s a -> s { _accessAnalyzerAnalyzerArchiveRuleRuleName = a })
