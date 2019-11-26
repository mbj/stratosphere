{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-singleheader.html

module Stratosphere.ResourceProperties.WAFv2WebACLSingleHeader where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLSingleHeader. See
-- 'waFv2WebACLSingleHeader' for a more convenient constructor.
data WAFv2WebACLSingleHeader =
  WAFv2WebACLSingleHeader
  { _wAFv2WebACLSingleHeaderName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLSingleHeader where
  toJSON WAFv2WebACLSingleHeader{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _wAFv2WebACLSingleHeaderName
    ]

-- | Constructor for 'WAFv2WebACLSingleHeader' containing required fields as
-- arguments.
waFv2WebACLSingleHeader
  :: WAFv2WebACLSingleHeader
waFv2WebACLSingleHeader  =
  WAFv2WebACLSingleHeader
  { _wAFv2WebACLSingleHeaderName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-singleheader.html#cfn-wafv2-webacl-singleheader-name
wafwaclshName :: Lens' WAFv2WebACLSingleHeader (Maybe (Val Text))
wafwaclshName = lens _wAFv2WebACLSingleHeaderName (\s a -> s { _wAFv2WebACLSingleHeaderName = a })
