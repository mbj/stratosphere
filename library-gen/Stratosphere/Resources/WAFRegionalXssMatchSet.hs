{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html

module Stratosphere.Resources.WAFRegionalXssMatchSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalXssMatchSetXssMatchTuple

-- | Full data type definition for WAFRegionalXssMatchSet. See
-- 'wafRegionalXssMatchSet' for a more convenient constructor.
data WAFRegionalXssMatchSet =
  WAFRegionalXssMatchSet
  { _wAFRegionalXssMatchSetName :: Val Text
  , _wAFRegionalXssMatchSetXssMatchTuples :: Maybe [WAFRegionalXssMatchSetXssMatchTuple]
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalXssMatchSet where
  toResourceProperties WAFRegionalXssMatchSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::XssMatchSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _wAFRegionalXssMatchSetName
        , fmap (("XssMatchTuples",) . toJSON) _wAFRegionalXssMatchSetXssMatchTuples
        ]
    }

-- | Constructor for 'WAFRegionalXssMatchSet' containing required fields as
-- arguments.
wafRegionalXssMatchSet
  :: Val Text -- ^ 'wafrxmsName'
  -> WAFRegionalXssMatchSet
wafRegionalXssMatchSet namearg =
  WAFRegionalXssMatchSet
  { _wAFRegionalXssMatchSetName = namearg
  , _wAFRegionalXssMatchSetXssMatchTuples = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html#cfn-wafregional-xssmatchset-name
wafrxmsName :: Lens' WAFRegionalXssMatchSet (Val Text)
wafrxmsName = lens _wAFRegionalXssMatchSetName (\s a -> s { _wAFRegionalXssMatchSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-xssmatchset.html#cfn-wafregional-xssmatchset-xssmatchtuples
wafrxmsXssMatchTuples :: Lens' WAFRegionalXssMatchSet (Maybe [WAFRegionalXssMatchSetXssMatchTuple])
wafrxmsXssMatchTuples = lens _wAFRegionalXssMatchSetXssMatchTuples (\s a -> s { _wAFRegionalXssMatchSetXssMatchTuples = a })
