{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLGeoMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLCountryCodes

-- | Full data type definition for WAFv2WebACLGeoMatchStatement. See
-- 'waFv2WebACLGeoMatchStatement' for a more convenient constructor.
data WAFv2WebACLGeoMatchStatement =
  WAFv2WebACLGeoMatchStatement
  { _wAFv2WebACLGeoMatchStatementCountryCodes :: Maybe WAFv2WebACLCountryCodes
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLGeoMatchStatement where
  toJSON WAFv2WebACLGeoMatchStatement{..} =
    object $
    catMaybes
    [ fmap (("CountryCodes",) . toJSON) _wAFv2WebACLGeoMatchStatementCountryCodes
    ]

-- | Constructor for 'WAFv2WebACLGeoMatchStatement' containing required fields
-- as arguments.
waFv2WebACLGeoMatchStatement
  :: WAFv2WebACLGeoMatchStatement
waFv2WebACLGeoMatchStatement  =
  WAFv2WebACLGeoMatchStatement
  { _wAFv2WebACLGeoMatchStatementCountryCodes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html#cfn-wafv2-webacl-geomatchstatement-countrycodes
wafwaclgmsCountryCodes :: Lens' WAFv2WebACLGeoMatchStatement (Maybe WAFv2WebACLCountryCodes)
wafwaclgmsCountryCodes = lens _wAFv2WebACLGeoMatchStatementCountryCodes (\s a -> s { _wAFv2WebACLGeoMatchStatementCountryCodes = a })
