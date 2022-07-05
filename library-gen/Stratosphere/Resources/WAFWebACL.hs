{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html

module Stratosphere.Resources.WAFWebACL where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFWebACLWafAction
import Stratosphere.ResourceProperties.WAFWebACLActivatedRule

-- | Full data type definition for WAFWebACL. See 'wafWebACL' for a more
-- convenient constructor.
data WAFWebACL =
  WAFWebACL
  { _wAFWebACLDefaultAction :: WAFWebACLWafAction
  , _wAFWebACLMetricName :: Val Text
  , _wAFWebACLName :: Val Text
  , _wAFWebACLRules :: Maybe [WAFWebACLActivatedRule]
  } deriving (Show, Eq)

instance ToResourceProperties WAFWebACL where
  toResourceProperties WAFWebACL{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAF::WebACL"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DefaultAction",) . toJSON) _wAFWebACLDefaultAction
        , (Just . ("MetricName",) . toJSON) _wAFWebACLMetricName
        , (Just . ("Name",) . toJSON) _wAFWebACLName
        , fmap (("Rules",) . toJSON) _wAFWebACLRules
        ]
    }

-- | Constructor for 'WAFWebACL' containing required fields as arguments.
wafWebACL
  :: WAFWebACLWafAction -- ^ 'wafwaclDefaultAction'
  -> Val Text -- ^ 'wafwaclMetricName'
  -> Val Text -- ^ 'wafwaclName'
  -> WAFWebACL
wafWebACL defaultActionarg metricNamearg namearg =
  WAFWebACL
  { _wAFWebACLDefaultAction = defaultActionarg
  , _wAFWebACLMetricName = metricNamearg
  , _wAFWebACLName = namearg
  , _wAFWebACLRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html#cfn-waf-webacl-defaultaction
wafwaclDefaultAction :: Lens' WAFWebACL WAFWebACLWafAction
wafwaclDefaultAction = lens _wAFWebACLDefaultAction (\s a -> s { _wAFWebACLDefaultAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html#cfn-waf-webacl-metricname
wafwaclMetricName :: Lens' WAFWebACL (Val Text)
wafwaclMetricName = lens _wAFWebACLMetricName (\s a -> s { _wAFWebACLMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html#cfn-waf-webacl-name
wafwaclName :: Lens' WAFWebACL (Val Text)
wafwaclName = lens _wAFWebACLName (\s a -> s { _wAFWebACLName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-webacl.html#cfn-waf-webacl-rules
wafwaclRules :: Lens' WAFWebACL (Maybe [WAFWebACLActivatedRule])
wafwaclRules = lens _wAFWebACLRules (\s a -> s { _wAFWebACLRules = a })
