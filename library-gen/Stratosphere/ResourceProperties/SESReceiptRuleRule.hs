{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html

module Stratosphere.ResourceProperties.SESReceiptRuleRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SESReceiptRuleAction

-- | Full data type definition for SESReceiptRuleRule. See
-- 'sesReceiptRuleRule' for a more convenient constructor.
data SESReceiptRuleRule =
  SESReceiptRuleRule
  { _sESReceiptRuleRuleActions :: Maybe [SESReceiptRuleAction]
  , _sESReceiptRuleRuleEnabled :: Maybe (Val Bool)
  , _sESReceiptRuleRuleName :: Maybe (Val Text)
  , _sESReceiptRuleRuleRecipients :: Maybe (ValList Text)
  , _sESReceiptRuleRuleScanEnabled :: Maybe (Val Bool)
  , _sESReceiptRuleRuleTlsPolicy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleRule where
  toJSON SESReceiptRuleRule{..} =
    object $
    catMaybes
    [ fmap (("Actions",) . toJSON) _sESReceiptRuleRuleActions
    , fmap (("Enabled",) . toJSON . fmap Bool') _sESReceiptRuleRuleEnabled
    , fmap (("Name",) . toJSON) _sESReceiptRuleRuleName
    , fmap (("Recipients",) . toJSON) _sESReceiptRuleRuleRecipients
    , fmap (("ScanEnabled",) . toJSON . fmap Bool') _sESReceiptRuleRuleScanEnabled
    , fmap (("TlsPolicy",) . toJSON) _sESReceiptRuleRuleTlsPolicy
    ]

-- | Constructor for 'SESReceiptRuleRule' containing required fields as
-- arguments.
sesReceiptRuleRule
  :: SESReceiptRuleRule
sesReceiptRuleRule  =
  SESReceiptRuleRule
  { _sESReceiptRuleRuleActions = Nothing
  , _sESReceiptRuleRuleEnabled = Nothing
  , _sESReceiptRuleRuleName = Nothing
  , _sESReceiptRuleRuleRecipients = Nothing
  , _sESReceiptRuleRuleScanEnabled = Nothing
  , _sESReceiptRuleRuleTlsPolicy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-actions
sesrrrActions :: Lens' SESReceiptRuleRule (Maybe [SESReceiptRuleAction])
sesrrrActions = lens _sESReceiptRuleRuleActions (\s a -> s { _sESReceiptRuleRuleActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-enabled
sesrrrEnabled :: Lens' SESReceiptRuleRule (Maybe (Val Bool))
sesrrrEnabled = lens _sESReceiptRuleRuleEnabled (\s a -> s { _sESReceiptRuleRuleEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-name
sesrrrName :: Lens' SESReceiptRuleRule (Maybe (Val Text))
sesrrrName = lens _sESReceiptRuleRuleName (\s a -> s { _sESReceiptRuleRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-recipients
sesrrrRecipients :: Lens' SESReceiptRuleRule (Maybe (ValList Text))
sesrrrRecipients = lens _sESReceiptRuleRuleRecipients (\s a -> s { _sESReceiptRuleRuleRecipients = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-scanenabled
sesrrrScanEnabled :: Lens' SESReceiptRuleRule (Maybe (Val Bool))
sesrrrScanEnabled = lens _sESReceiptRuleRuleScanEnabled (\s a -> s { _sESReceiptRuleRuleScanEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-tlspolicy
sesrrrTlsPolicy :: Lens' SESReceiptRuleRule (Maybe (Val Text))
sesrrrTlsPolicy = lens _sESReceiptRuleRuleTlsPolicy (\s a -> s { _sESReceiptRuleRuleTlsPolicy = a })
