{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetreferencestatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLIPSetReferenceStatement where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLIPSetReferenceStatement. See
-- 'waFv2WebACLIPSetReferenceStatement' for a more convenient constructor.
data WAFv2WebACLIPSetReferenceStatement =
  WAFv2WebACLIPSetReferenceStatement
  { _wAFv2WebACLIPSetReferenceStatementARN :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLIPSetReferenceStatement where
  toJSON WAFv2WebACLIPSetReferenceStatement{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2WebACLIPSetReferenceStatementARN
    ]

-- | Constructor for 'WAFv2WebACLIPSetReferenceStatement' containing required
-- fields as arguments.
waFv2WebACLIPSetReferenceStatement
  :: WAFv2WebACLIPSetReferenceStatement
waFv2WebACLIPSetReferenceStatement  =
  WAFv2WebACLIPSetReferenceStatement
  { _wAFv2WebACLIPSetReferenceStatementARN = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetreferencestatement.html#cfn-wafv2-webacl-ipsetreferencestatement-arn
wafwaclipsrsARN :: Lens' WAFv2WebACLIPSetReferenceStatement (Maybe (Val Text))
wafwaclipsrsARN = lens _wAFv2WebACLIPSetReferenceStatementARN (\s a -> s { _wAFv2WebACLIPSetReferenceStatementARN = a })
