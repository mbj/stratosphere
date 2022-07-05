{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-geomatchset.html

module Stratosphere.Resources.WAFRegionalGeoMatchSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalGeoMatchSetGeoMatchConstraint

-- | Full data type definition for WAFRegionalGeoMatchSet. See
-- 'wafRegionalGeoMatchSet' for a more convenient constructor.
data WAFRegionalGeoMatchSet =
  WAFRegionalGeoMatchSet
  { _wAFRegionalGeoMatchSetGeoMatchConstraints :: Maybe [WAFRegionalGeoMatchSetGeoMatchConstraint]
  , _wAFRegionalGeoMatchSetName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalGeoMatchSet where
  toResourceProperties WAFRegionalGeoMatchSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::GeoMatchSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("GeoMatchConstraints",) . toJSON) _wAFRegionalGeoMatchSetGeoMatchConstraints
        , (Just . ("Name",) . toJSON) _wAFRegionalGeoMatchSetName
        ]
    }

-- | Constructor for 'WAFRegionalGeoMatchSet' containing required fields as
-- arguments.
wafRegionalGeoMatchSet
  :: Val Text -- ^ 'wafrgmsName'
  -> WAFRegionalGeoMatchSet
wafRegionalGeoMatchSet namearg =
  WAFRegionalGeoMatchSet
  { _wAFRegionalGeoMatchSetGeoMatchConstraints = Nothing
  , _wAFRegionalGeoMatchSetName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-geomatchset.html#cfn-wafregional-geomatchset-geomatchconstraints
wafrgmsGeoMatchConstraints :: Lens' WAFRegionalGeoMatchSet (Maybe [WAFRegionalGeoMatchSetGeoMatchConstraint])
wafrgmsGeoMatchConstraints = lens _wAFRegionalGeoMatchSetGeoMatchConstraints (\s a -> s { _wAFRegionalGeoMatchSetGeoMatchConstraints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-geomatchset.html#cfn-wafregional-geomatchset-name
wafrgmsName :: Lens' WAFRegionalGeoMatchSet (Val Text)
wafrgmsName = lens _wAFRegionalGeoMatchSetName (\s a -> s { _wAFRegionalGeoMatchSetName = a })
