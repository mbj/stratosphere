{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLSingleHeader
import Stratosphere.ResourceProperties.WAFv2WebACLSingleQueryArgument

-- | Full data type definition for WAFv2WebACLFieldToMatch. See
-- 'waFv2WebACLFieldToMatch' for a more convenient constructor.
data WAFv2WebACLFieldToMatch =
  WAFv2WebACLFieldToMatch
  { _wAFv2WebACLFieldToMatchSingleHeader :: Maybe WAFv2WebACLSingleHeader
  , _wAFv2WebACLFieldToMatchSingleQueryArgument :: Maybe WAFv2WebACLSingleQueryArgument
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLFieldToMatch where
  toJSON WAFv2WebACLFieldToMatch{..} =
    object $
    catMaybes
    [ fmap (("SingleHeader",) . toJSON) _wAFv2WebACLFieldToMatchSingleHeader
    , fmap (("SingleQueryArgument",) . toJSON) _wAFv2WebACLFieldToMatchSingleQueryArgument
    ]

-- | Constructor for 'WAFv2WebACLFieldToMatch' containing required fields as
-- arguments.
waFv2WebACLFieldToMatch
  :: WAFv2WebACLFieldToMatch
waFv2WebACLFieldToMatch  =
  WAFv2WebACLFieldToMatch
  { _wAFv2WebACLFieldToMatchSingleHeader = Nothing
  , _wAFv2WebACLFieldToMatchSingleQueryArgument = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singleheader
wafwaclftmSingleHeader :: Lens' WAFv2WebACLFieldToMatch (Maybe WAFv2WebACLSingleHeader)
wafwaclftmSingleHeader = lens _wAFv2WebACLFieldToMatchSingleHeader (\s a -> s { _wAFv2WebACLFieldToMatchSingleHeader = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singlequeryargument
wafwaclftmSingleQueryArgument :: Lens' WAFv2WebACLFieldToMatch (Maybe WAFv2WebACLSingleQueryArgument)
wafwaclftmSingleQueryArgument = lens _wAFv2WebACLFieldToMatchSingleQueryArgument (\s a -> s { _wAFv2WebACLFieldToMatchSingleQueryArgument = a })
