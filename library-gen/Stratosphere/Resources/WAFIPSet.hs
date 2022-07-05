{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html

module Stratosphere.Resources.WAFIPSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFIPSetIPSetDescriptor

-- | Full data type definition for WAFIPSet. See 'wafipSet' for a more
-- convenient constructor.
data WAFIPSet =
  WAFIPSet
  { _wAFIPSetIPSetDescriptors :: Maybe [WAFIPSetIPSetDescriptor]
  , _wAFIPSetName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties WAFIPSet where
  toResourceProperties WAFIPSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAF::IPSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("IPSetDescriptors",) . toJSON) _wAFIPSetIPSetDescriptors
        , (Just . ("Name",) . toJSON) _wAFIPSetName
        ]
    }

-- | Constructor for 'WAFIPSet' containing required fields as arguments.
wafipSet
  :: Val Text -- ^ 'wafipsName'
  -> WAFIPSet
wafipSet namearg =
  WAFIPSet
  { _wAFIPSetIPSetDescriptors = Nothing
  , _wAFIPSetName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-ipsetdescriptors
wafipsIPSetDescriptors :: Lens' WAFIPSet (Maybe [WAFIPSetIPSetDescriptor])
wafipsIPSetDescriptors = lens _wAFIPSetIPSetDescriptors (\s a -> s { _wAFIPSetIPSetDescriptors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-name
wafipsName :: Lens' WAFIPSet (Val Text)
wafipsName = lens _wAFIPSetName (\s a -> s { _wAFIPSetName = a })
