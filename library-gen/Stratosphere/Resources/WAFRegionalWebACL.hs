{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html

module Stratosphere.Resources.WAFRegionalWebACL where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalWebACLAction
import Stratosphere.ResourceProperties.WAFRegionalWebACLRule

-- | Full data type definition for WAFRegionalWebACL. See 'wafRegionalWebACL'
-- for a more convenient constructor.
data WAFRegionalWebACL =
  WAFRegionalWebACL
  { _wAFRegionalWebACLDefaultAction :: WAFRegionalWebACLAction
  , _wAFRegionalWebACLMetricName :: Val Text
  , _wAFRegionalWebACLName :: Val Text
  , _wAFRegionalWebACLRules :: Maybe [WAFRegionalWebACLRule]
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalWebACL where
  toResourceProperties WAFRegionalWebACL{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::WebACL"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DefaultAction",) . toJSON) _wAFRegionalWebACLDefaultAction
        , (Just . ("MetricName",) . toJSON) _wAFRegionalWebACLMetricName
        , (Just . ("Name",) . toJSON) _wAFRegionalWebACLName
        , fmap (("Rules",) . toJSON) _wAFRegionalWebACLRules
        ]
    }

-- | Constructor for 'WAFRegionalWebACL' containing required fields as
-- arguments.
wafRegionalWebACL
  :: WAFRegionalWebACLAction -- ^ 'wafrwaclDefaultAction'
  -> Val Text -- ^ 'wafrwaclMetricName'
  -> Val Text -- ^ 'wafrwaclName'
  -> WAFRegionalWebACL
wafRegionalWebACL defaultActionarg metricNamearg namearg =
  WAFRegionalWebACL
  { _wAFRegionalWebACLDefaultAction = defaultActionarg
  , _wAFRegionalWebACLMetricName = metricNamearg
  , _wAFRegionalWebACLName = namearg
  , _wAFRegionalWebACLRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-defaultaction
wafrwaclDefaultAction :: Lens' WAFRegionalWebACL WAFRegionalWebACLAction
wafrwaclDefaultAction = lens _wAFRegionalWebACLDefaultAction (\s a -> s { _wAFRegionalWebACLDefaultAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-metricname
wafrwaclMetricName :: Lens' WAFRegionalWebACL (Val Text)
wafrwaclMetricName = lens _wAFRegionalWebACLMetricName (\s a -> s { _wAFRegionalWebACLMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-name
wafrwaclName :: Lens' WAFRegionalWebACL (Val Text)
wafrwaclName = lens _wAFRegionalWebACLName (\s a -> s { _wAFRegionalWebACLName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html#cfn-wafregional-webacl-rules
wafrwaclRules :: Lens' WAFRegionalWebACL (Maybe [WAFRegionalWebACLRule])
wafrwaclRules = lens _wAFRegionalWebACLRules (\s a -> s { _wAFRegionalWebACLRules = a })
