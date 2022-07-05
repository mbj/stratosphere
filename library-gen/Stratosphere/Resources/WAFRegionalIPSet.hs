{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html

module Stratosphere.Resources.WAFRegionalIPSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalIPSetIPSetDescriptor

-- | Full data type definition for WAFRegionalIPSet. See 'wafRegionalIPSet'
-- for a more convenient constructor.
data WAFRegionalIPSet =
  WAFRegionalIPSet
  { _wAFRegionalIPSetIPSetDescriptors :: Maybe [WAFRegionalIPSetIPSetDescriptor]
  , _wAFRegionalIPSetName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalIPSet where
  toResourceProperties WAFRegionalIPSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::IPSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("IPSetDescriptors",) . toJSON) _wAFRegionalIPSetIPSetDescriptors
        , (Just . ("Name",) . toJSON) _wAFRegionalIPSetName
        ]
    }

-- | Constructor for 'WAFRegionalIPSet' containing required fields as
-- arguments.
wafRegionalIPSet
  :: Val Text -- ^ 'wafripsName'
  -> WAFRegionalIPSet
wafRegionalIPSet namearg =
  WAFRegionalIPSet
  { _wAFRegionalIPSetIPSetDescriptors = Nothing
  , _wAFRegionalIPSetName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-ipsetdescriptors
wafripsIPSetDescriptors :: Lens' WAFRegionalIPSet (Maybe [WAFRegionalIPSetIPSetDescriptor])
wafripsIPSetDescriptors = lens _wAFRegionalIPSetIPSetDescriptors (\s a -> s { _wAFRegionalIPSetIPSetDescriptors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-name
wafripsName :: Lens' WAFRegionalIPSet (Val Text)
wafripsName = lens _wAFRegionalIPSetName (\s a -> s { _wAFRegionalIPSetName = a })
