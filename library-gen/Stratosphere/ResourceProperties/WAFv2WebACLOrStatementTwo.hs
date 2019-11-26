{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2WebACLOrStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementThrees

-- | Full data type definition for WAFv2WebACLOrStatementTwo. See
-- 'waFv2WebACLOrStatementTwo' for a more convenient constructor.
data WAFv2WebACLOrStatementTwo =
  WAFv2WebACLOrStatementTwo
  { _wAFv2WebACLOrStatementTwoStatements :: Maybe WAFv2WebACLStatementThrees
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLOrStatementTwo where
  toJSON WAFv2WebACLOrStatementTwo{..} =
    object $
    catMaybes
    [ fmap (("Statements",) . toJSON) _wAFv2WebACLOrStatementTwoStatements
    ]

-- | Constructor for 'WAFv2WebACLOrStatementTwo' containing required fields as
-- arguments.
waFv2WebACLOrStatementTwo
  :: WAFv2WebACLOrStatementTwo
waFv2WebACLOrStatementTwo  =
  WAFv2WebACLOrStatementTwo
  { _wAFv2WebACLOrStatementTwoStatements = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementtwo.html#cfn-wafv2-webacl-orstatementtwo-statements
wafwaclostStatements :: Lens' WAFv2WebACLOrStatementTwo (Maybe WAFv2WebACLStatementThrees)
wafwaclostStatements = lens _wAFv2WebACLOrStatementTwoStatements (\s a -> s { _wAFv2WebACLOrStatementTwoStatements = a })
