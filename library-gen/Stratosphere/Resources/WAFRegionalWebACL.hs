{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-webacl.html

module Stratosphere.Resources.WAFRegionalWebACL where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
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

instance ToJSON WAFRegionalWebACL where
  toJSON WAFRegionalWebACL{..} =
    object $
    catMaybes
    [ Just ("DefaultAction" .= _wAFRegionalWebACLDefaultAction)
    , Just ("MetricName" .= _wAFRegionalWebACLMetricName)
    , Just ("Name" .= _wAFRegionalWebACLName)
    , ("Rules" .=) <$> _wAFRegionalWebACLRules
    ]

instance FromJSON WAFRegionalWebACL where
  parseJSON (Object obj) =
    WAFRegionalWebACL <$>
      obj .: "DefaultAction" <*>
      obj .: "MetricName" <*>
      obj .: "Name" <*>
      obj .:? "Rules"
  parseJSON _ = mempty

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
