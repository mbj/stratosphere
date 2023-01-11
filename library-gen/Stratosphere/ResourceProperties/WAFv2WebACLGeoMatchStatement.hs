
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLGeoMatchStatement where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLForwardedIPConfiguration

-- | Full data type definition for WAFv2WebACLGeoMatchStatement. See
-- 'waFv2WebACLGeoMatchStatement' for a more convenient constructor.
data WAFv2WebACLGeoMatchStatement =
  WAFv2WebACLGeoMatchStatement
  { _wAFv2WebACLGeoMatchStatementCountryCodes :: Maybe (ValList Text)
  , _wAFv2WebACLGeoMatchStatementForwardedIPConfig :: Maybe WAFv2WebACLForwardedIPConfiguration
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLGeoMatchStatement where
  toJSON WAFv2WebACLGeoMatchStatement{..} =
    object $
    catMaybes
    [ fmap (("CountryCodes",) . toJSON) _wAFv2WebACLGeoMatchStatementCountryCodes
    , fmap (("ForwardedIPConfig",) . toJSON) _wAFv2WebACLGeoMatchStatementForwardedIPConfig
    ]

-- | Constructor for 'WAFv2WebACLGeoMatchStatement' containing required fields
-- as arguments.
waFv2WebACLGeoMatchStatement
  :: WAFv2WebACLGeoMatchStatement
waFv2WebACLGeoMatchStatement  =
  WAFv2WebACLGeoMatchStatement
  { _wAFv2WebACLGeoMatchStatementCountryCodes = Nothing
  , _wAFv2WebACLGeoMatchStatementForwardedIPConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html#cfn-wafv2-webacl-geomatchstatement-countrycodes
wafwaclgmsCountryCodes :: Lens' WAFv2WebACLGeoMatchStatement (Maybe (ValList Text))
wafwaclgmsCountryCodes = lens _wAFv2WebACLGeoMatchStatementCountryCodes (\s a -> s { _wAFv2WebACLGeoMatchStatementCountryCodes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-geomatchstatement.html#cfn-wafv2-webacl-geomatchstatement-forwardedipconfig
wafwaclgmsForwardedIPConfig :: Lens' WAFv2WebACLGeoMatchStatement (Maybe WAFv2WebACLForwardedIPConfiguration)
wafwaclgmsForwardedIPConfig = lens _wAFv2WebACLGeoMatchStatementForwardedIPConfig (\s a -> s { _wAFv2WebACLGeoMatchStatementForwardedIPConfig = a })
