{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwos.html

module Stratosphere.ResourceProperties.WAFv2WebACLStatementTwos where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementTwo

-- | Full data type definition for WAFv2WebACLStatementTwos. See
-- 'waFv2WebACLStatementTwos' for a more convenient constructor.
data WAFv2WebACLStatementTwos =
  WAFv2WebACLStatementTwos
  { _wAFv2WebACLStatementTwosStatementTwos :: Maybe [WAFv2WebACLStatementTwo]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLStatementTwos where
  toJSON WAFv2WebACLStatementTwos{..} =
    object $
    catMaybes
    [ fmap (("StatementTwos",) . toJSON) _wAFv2WebACLStatementTwosStatementTwos
    ]

-- | Constructor for 'WAFv2WebACLStatementTwos' containing required fields as
-- arguments.
waFv2WebACLStatementTwos
  :: WAFv2WebACLStatementTwos
waFv2WebACLStatementTwos  =
  WAFv2WebACLStatementTwos
  { _wAFv2WebACLStatementTwosStatementTwos = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementtwos.html#cfn-wafv2-webacl-statementtwos-statementtwos
wafwaclstStatementTwos :: Lens' WAFv2WebACLStatementTwos (Maybe [WAFv2WebACLStatementTwo])
wafwaclstStatementTwos = lens _wAFv2WebACLStatementTwosStatementTwos (\s a -> s { _wAFv2WebACLStatementTwosStatementTwos = a })
