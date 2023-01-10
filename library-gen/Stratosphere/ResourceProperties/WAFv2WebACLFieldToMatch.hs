
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLFieldToMatch. See
-- 'waFv2WebACLFieldToMatch' for a more convenient constructor.
data WAFv2WebACLFieldToMatch =
  WAFv2WebACLFieldToMatch
  { _wAFv2WebACLFieldToMatchAllQueryArguments :: Maybe Object
  , _wAFv2WebACLFieldToMatchBody :: Maybe Object
  , _wAFv2WebACLFieldToMatchMethod :: Maybe Object
  , _wAFv2WebACLFieldToMatchQueryString :: Maybe Object
  , _wAFv2WebACLFieldToMatchSingleHeader :: Maybe Object
  , _wAFv2WebACLFieldToMatchSingleQueryArgument :: Maybe Object
  , _wAFv2WebACLFieldToMatchUriPath :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLFieldToMatch where
  toJSON WAFv2WebACLFieldToMatch{..} =
    object $
    catMaybes
    [ fmap (("AllQueryArguments",) . toJSON) _wAFv2WebACLFieldToMatchAllQueryArguments
    , fmap (("Body",) . toJSON) _wAFv2WebACLFieldToMatchBody
    , fmap (("Method",) . toJSON) _wAFv2WebACLFieldToMatchMethod
    , fmap (("QueryString",) . toJSON) _wAFv2WebACLFieldToMatchQueryString
    , fmap (("SingleHeader",) . toJSON) _wAFv2WebACLFieldToMatchSingleHeader
    , fmap (("SingleQueryArgument",) . toJSON) _wAFv2WebACLFieldToMatchSingleQueryArgument
    , fmap (("UriPath",) . toJSON) _wAFv2WebACLFieldToMatchUriPath
    ]

-- | Constructor for 'WAFv2WebACLFieldToMatch' containing required fields as
-- arguments.
waFv2WebACLFieldToMatch
  :: WAFv2WebACLFieldToMatch
waFv2WebACLFieldToMatch  =
  WAFv2WebACLFieldToMatch
  { _wAFv2WebACLFieldToMatchAllQueryArguments = Nothing
  , _wAFv2WebACLFieldToMatchBody = Nothing
  , _wAFv2WebACLFieldToMatchMethod = Nothing
  , _wAFv2WebACLFieldToMatchQueryString = Nothing
  , _wAFv2WebACLFieldToMatchSingleHeader = Nothing
  , _wAFv2WebACLFieldToMatchSingleQueryArgument = Nothing
  , _wAFv2WebACLFieldToMatchUriPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-allqueryarguments
wafwaclftmAllQueryArguments :: Lens' WAFv2WebACLFieldToMatch (Maybe Object)
wafwaclftmAllQueryArguments = lens _wAFv2WebACLFieldToMatchAllQueryArguments (\s a -> s { _wAFv2WebACLFieldToMatchAllQueryArguments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-body
wafwaclftmBody :: Lens' WAFv2WebACLFieldToMatch (Maybe Object)
wafwaclftmBody = lens _wAFv2WebACLFieldToMatchBody (\s a -> s { _wAFv2WebACLFieldToMatchBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-method
wafwaclftmMethod :: Lens' WAFv2WebACLFieldToMatch (Maybe Object)
wafwaclftmMethod = lens _wAFv2WebACLFieldToMatchMethod (\s a -> s { _wAFv2WebACLFieldToMatchMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-querystring
wafwaclftmQueryString :: Lens' WAFv2WebACLFieldToMatch (Maybe Object)
wafwaclftmQueryString = lens _wAFv2WebACLFieldToMatchQueryString (\s a -> s { _wAFv2WebACLFieldToMatchQueryString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singleheader
wafwaclftmSingleHeader :: Lens' WAFv2WebACLFieldToMatch (Maybe Object)
wafwaclftmSingleHeader = lens _wAFv2WebACLFieldToMatchSingleHeader (\s a -> s { _wAFv2WebACLFieldToMatchSingleHeader = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-singlequeryargument
wafwaclftmSingleQueryArgument :: Lens' WAFv2WebACLFieldToMatch (Maybe Object)
wafwaclftmSingleQueryArgument = lens _wAFv2WebACLFieldToMatchSingleQueryArgument (\s a -> s { _wAFv2WebACLFieldToMatchSingleQueryArgument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtomatch.html#cfn-wafv2-webacl-fieldtomatch-uripath
wafwaclftmUriPath :: Lens' WAFv2WebACLFieldToMatch (Maybe Object)
wafwaclftmUriPath = lens _wAFv2WebACLFieldToMatchUriPath (\s a -> s { _wAFv2WebACLFieldToMatchUriPath = a })
