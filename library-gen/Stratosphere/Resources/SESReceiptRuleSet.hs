{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptruleset.html

module Stratosphere.Resources.SESReceiptRuleSet where

import Stratosphere.ResourceImports


-- | Full data type definition for SESReceiptRuleSet. See 'sesReceiptRuleSet'
-- for a more convenient constructor.
data SESReceiptRuleSet =
  SESReceiptRuleSet
  { _sESReceiptRuleSetRuleSetName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleSet where
  toJSON SESReceiptRuleSet{..} =
    object $
    catMaybes
    [ fmap (("RuleSetName",) . toJSON) _sESReceiptRuleSetRuleSetName
    ]

instance FromJSON SESReceiptRuleSet where
  parseJSON (Object obj) =
    SESReceiptRuleSet <$>
      (obj .:? "RuleSetName")
  parseJSON _ = mempty

-- | Constructor for 'SESReceiptRuleSet' containing required fields as
-- arguments.
sesReceiptRuleSet
  :: SESReceiptRuleSet
sesReceiptRuleSet  =
  SESReceiptRuleSet
  { _sESReceiptRuleSetRuleSetName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptruleset.html#cfn-ses-receiptruleset-rulesetname
sesrrsRuleSetName :: Lens' SESReceiptRuleSet (Maybe (Val Text))
sesrrsRuleSetName = lens _sESReceiptRuleSetRuleSetName (\s a -> s { _sESReceiptRuleSetRuleSetName = a })
