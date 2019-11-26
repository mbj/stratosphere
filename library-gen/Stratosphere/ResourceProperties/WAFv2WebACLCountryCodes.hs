{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-countrycodes.html

module Stratosphere.ResourceProperties.WAFv2WebACLCountryCodes where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLCountryCodes. See
-- 'waFv2WebACLCountryCodes' for a more convenient constructor.
data WAFv2WebACLCountryCodes =
  WAFv2WebACLCountryCodes
  { _wAFv2WebACLCountryCodesCountryCodes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLCountryCodes where
  toJSON WAFv2WebACLCountryCodes{..} =
    object $
    catMaybes
    [ fmap (("CountryCodes",) . toJSON) _wAFv2WebACLCountryCodesCountryCodes
    ]

-- | Constructor for 'WAFv2WebACLCountryCodes' containing required fields as
-- arguments.
waFv2WebACLCountryCodes
  :: WAFv2WebACLCountryCodes
waFv2WebACLCountryCodes  =
  WAFv2WebACLCountryCodes
  { _wAFv2WebACLCountryCodesCountryCodes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-countrycodes.html#cfn-wafv2-webacl-countrycodes-countrycodes
wafwaclccCountryCodes :: Lens' WAFv2WebACLCountryCodes (Maybe (ValList Text))
wafwaclccCountryCodes = lens _wAFv2WebACLCountryCodesCountryCodes (\s a -> s { _wAFv2WebACLCountryCodesCountryCodes = a })
