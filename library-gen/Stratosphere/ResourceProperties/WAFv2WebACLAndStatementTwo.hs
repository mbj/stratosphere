{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2WebACLAndStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementThrees

-- | Full data type definition for WAFv2WebACLAndStatementTwo. See
-- 'waFv2WebACLAndStatementTwo' for a more convenient constructor.
data WAFv2WebACLAndStatementTwo =
  WAFv2WebACLAndStatementTwo
  { _wAFv2WebACLAndStatementTwoStatements :: Maybe WAFv2WebACLStatementThrees
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLAndStatementTwo where
  toJSON WAFv2WebACLAndStatementTwo{..} =
    object $
    catMaybes
    [ fmap (("Statements",) . toJSON) _wAFv2WebACLAndStatementTwoStatements
    ]

-- | Constructor for 'WAFv2WebACLAndStatementTwo' containing required fields
-- as arguments.
waFv2WebACLAndStatementTwo
  :: WAFv2WebACLAndStatementTwo
waFv2WebACLAndStatementTwo  =
  WAFv2WebACLAndStatementTwo
  { _wAFv2WebACLAndStatementTwoStatements = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementtwo.html#cfn-wafv2-webacl-andstatementtwo-statements
wafwaclastStatements :: Lens' WAFv2WebACLAndStatementTwo (Maybe WAFv2WebACLStatementThrees)
wafwaclastStatements = lens _wAFv2WebACLAndStatementTwoStatements (\s a -> s { _wAFv2WebACLAndStatementTwoStatements = a })
