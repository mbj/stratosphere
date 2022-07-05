{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html

module Stratosphere.Resources.WAFRegionalByteMatchSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalByteMatchSetByteMatchTuple

-- | Full data type definition for WAFRegionalByteMatchSet. See
-- 'wafRegionalByteMatchSet' for a more convenient constructor.
data WAFRegionalByteMatchSet =
  WAFRegionalByteMatchSet
  { _wAFRegionalByteMatchSetByteMatchTuples :: Maybe [WAFRegionalByteMatchSetByteMatchTuple]
  , _wAFRegionalByteMatchSetName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalByteMatchSet where
  toResourceProperties WAFRegionalByteMatchSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::ByteMatchSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ByteMatchTuples",) . toJSON) _wAFRegionalByteMatchSetByteMatchTuples
        , (Just . ("Name",) . toJSON) _wAFRegionalByteMatchSetName
        ]
    }

-- | Constructor for 'WAFRegionalByteMatchSet' containing required fields as
-- arguments.
wafRegionalByteMatchSet
  :: Val Text -- ^ 'wafrbmsName'
  -> WAFRegionalByteMatchSet
wafRegionalByteMatchSet namearg =
  WAFRegionalByteMatchSet
  { _wAFRegionalByteMatchSetByteMatchTuples = Nothing
  , _wAFRegionalByteMatchSetName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html#cfn-wafregional-bytematchset-bytematchtuples
wafrbmsByteMatchTuples :: Lens' WAFRegionalByteMatchSet (Maybe [WAFRegionalByteMatchSetByteMatchTuple])
wafrbmsByteMatchTuples = lens _wAFRegionalByteMatchSetByteMatchTuples (\s a -> s { _wAFRegionalByteMatchSetByteMatchTuples = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-bytematchset.html#cfn-wafregional-bytematchset-name
wafrbmsName :: Lens' WAFRegionalByteMatchSet (Val Text)
wafrbmsName = lens _wAFRegionalByteMatchSetName (\s a -> s { _wAFRegionalByteMatchSetName = a })
