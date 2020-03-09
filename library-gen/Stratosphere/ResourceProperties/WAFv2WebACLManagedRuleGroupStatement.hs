{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLManagedRuleGroupStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLExcludedRule

-- | Full data type definition for WAFv2WebACLManagedRuleGroupStatement. See
-- 'waFv2WebACLManagedRuleGroupStatement' for a more convenient constructor.
data WAFv2WebACLManagedRuleGroupStatement =
  WAFv2WebACLManagedRuleGroupStatement
  { _wAFv2WebACLManagedRuleGroupStatementExcludedRules :: Maybe [WAFv2WebACLExcludedRule]
  , _wAFv2WebACLManagedRuleGroupStatementName :: Val Text
  , _wAFv2WebACLManagedRuleGroupStatementVendorName :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLManagedRuleGroupStatement where
  toJSON WAFv2WebACLManagedRuleGroupStatement{..} =
    object $
    catMaybes
    [ fmap (("ExcludedRules",) . toJSON) _wAFv2WebACLManagedRuleGroupStatementExcludedRules
    , (Just . ("Name",) . toJSON) _wAFv2WebACLManagedRuleGroupStatementName
    , (Just . ("VendorName",) . toJSON) _wAFv2WebACLManagedRuleGroupStatementVendorName
    ]

-- | Constructor for 'WAFv2WebACLManagedRuleGroupStatement' containing
-- required fields as arguments.
waFv2WebACLManagedRuleGroupStatement
  :: Val Text -- ^ 'wafwaclmrgsName'
  -> Val Text -- ^ 'wafwaclmrgsVendorName'
  -> WAFv2WebACLManagedRuleGroupStatement
waFv2WebACLManagedRuleGroupStatement namearg vendorNamearg =
  WAFv2WebACLManagedRuleGroupStatement
  { _wAFv2WebACLManagedRuleGroupStatementExcludedRules = Nothing
  , _wAFv2WebACLManagedRuleGroupStatementName = namearg
  , _wAFv2WebACLManagedRuleGroupStatementVendorName = vendorNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html#cfn-wafv2-webacl-managedrulegroupstatement-excludedrules
wafwaclmrgsExcludedRules :: Lens' WAFv2WebACLManagedRuleGroupStatement (Maybe [WAFv2WebACLExcludedRule])
wafwaclmrgsExcludedRules = lens _wAFv2WebACLManagedRuleGroupStatementExcludedRules (\s a -> s { _wAFv2WebACLManagedRuleGroupStatementExcludedRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html#cfn-wafv2-webacl-managedrulegroupstatement-name
wafwaclmrgsName :: Lens' WAFv2WebACLManagedRuleGroupStatement (Val Text)
wafwaclmrgsName = lens _wAFv2WebACLManagedRuleGroupStatementName (\s a -> s { _wAFv2WebACLManagedRuleGroupStatementName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupstatement.html#cfn-wafv2-webacl-managedrulegroupstatement-vendorname
wafwaclmrgsVendorName :: Lens' WAFv2WebACLManagedRuleGroupStatement (Val Text)
wafwaclmrgsVendorName = lens _wAFv2WebACLManagedRuleGroupStatementVendorName (\s a -> s { _wAFv2WebACLManagedRuleGroupStatementVendorName = a })
