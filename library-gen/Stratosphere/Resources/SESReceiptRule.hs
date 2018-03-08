{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html

module Stratosphere.Resources.SESReceiptRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SESReceiptRuleRule

-- | Full data type definition for SESReceiptRule. See 'sesReceiptRule' for a
-- more convenient constructor.
data SESReceiptRule =
  SESReceiptRule
  { _sESReceiptRuleAfter :: Maybe (Val Text)
  , _sESReceiptRuleRule :: SESReceiptRuleRule
  , _sESReceiptRuleRuleSetName :: Val Text
  } deriving (Show, Eq)

instance ToJSON SESReceiptRule where
  toJSON SESReceiptRule{..} =
    object $
    catMaybes
    [ fmap (("After",) . toJSON) _sESReceiptRuleAfter
    , (Just . ("Rule",) . toJSON) _sESReceiptRuleRule
    , (Just . ("RuleSetName",) . toJSON) _sESReceiptRuleRuleSetName
    ]

instance FromJSON SESReceiptRule where
  parseJSON (Object obj) =
    SESReceiptRule <$>
      (obj .:? "After") <*>
      (obj .: "Rule") <*>
      (obj .: "RuleSetName")
  parseJSON _ = mempty

-- | Constructor for 'SESReceiptRule' containing required fields as arguments.
sesReceiptRule
  :: SESReceiptRuleRule -- ^ 'sesrrRule'
  -> Val Text -- ^ 'sesrrRuleSetName'
  -> SESReceiptRule
sesReceiptRule rulearg ruleSetNamearg =
  SESReceiptRule
  { _sESReceiptRuleAfter = Nothing
  , _sESReceiptRuleRule = rulearg
  , _sESReceiptRuleRuleSetName = ruleSetNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-after
sesrrAfter :: Lens' SESReceiptRule (Maybe (Val Text))
sesrrAfter = lens _sESReceiptRuleAfter (\s a -> s { _sESReceiptRuleAfter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-rule
sesrrRule :: Lens' SESReceiptRule SESReceiptRuleRule
sesrrRule = lens _sESReceiptRuleRule (\s a -> s { _sESReceiptRuleRule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-rulesetname
sesrrRuleSetName :: Lens' SESReceiptRule (Val Text)
sesrrRuleSetName = lens _sESReceiptRuleRuleSetName (\s a -> s { _sESReceiptRuleRuleSetName = a })
