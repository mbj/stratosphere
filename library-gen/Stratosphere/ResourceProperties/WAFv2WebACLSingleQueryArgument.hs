{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-singlequeryargument.html

module Stratosphere.ResourceProperties.WAFv2WebACLSingleQueryArgument where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLSingleQueryArgument. See
-- 'waFv2WebACLSingleQueryArgument' for a more convenient constructor.
data WAFv2WebACLSingleQueryArgument =
  WAFv2WebACLSingleQueryArgument
  { _wAFv2WebACLSingleQueryArgumentName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLSingleQueryArgument where
  toJSON WAFv2WebACLSingleQueryArgument{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _wAFv2WebACLSingleQueryArgumentName
    ]

-- | Constructor for 'WAFv2WebACLSingleQueryArgument' containing required
-- fields as arguments.
waFv2WebACLSingleQueryArgument
  :: WAFv2WebACLSingleQueryArgument
waFv2WebACLSingleQueryArgument  =
  WAFv2WebACLSingleQueryArgument
  { _wAFv2WebACLSingleQueryArgumentName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-singlequeryargument.html#cfn-wafv2-webacl-singlequeryargument-name
wafwaclsqaName :: Lens' WAFv2WebACLSingleQueryArgument (Maybe (Val Text))
wafwaclsqaName = lens _wAFv2WebACLSingleQueryArgumentName (\s a -> s { _wAFv2WebACLSingleQueryArgumentName = a })
