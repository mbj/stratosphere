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
  { _wAFv2WebACLIPSetReferenceStatementArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLIPSetReferenceStatement where
  toJSON WAFv2WebACLIPSetReferenceStatement{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _wAFv2WebACLIPSetReferenceStatementArn
    ]

-- | Constructor for 'WAFv2WebACLIPSetReferenceStatement' containing required
-- fields as arguments.
waFv2WebACLIPSetReferenceStatement
  :: Val Text -- ^ 'wafwaclipsrsArn'
  -> WAFv2WebACLIPSetReferenceStatement
waFv2WebACLIPSetReferenceStatement arnarg =
  WAFv2WebACLIPSetReferenceStatement
  { _wAFv2WebACLIPSetReferenceStatementArn = arnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetreferencestatement.html#cfn-wafv2-webacl-ipsetreferencestatement-arn
wafwaclipsrsArn :: Lens' WAFv2WebACLIPSetReferenceStatement (Val Text)
wafwaclipsrsArn = lens _wAFv2WebACLIPSetReferenceStatementArn (\s a -> s { _wAFv2WebACLIPSetReferenceStatementArn = a })
