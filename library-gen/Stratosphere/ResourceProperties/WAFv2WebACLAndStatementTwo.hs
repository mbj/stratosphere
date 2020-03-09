{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2WebACLAndStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementThree

-- | Full data type definition for WAFv2WebACLAndStatementTwo. See
-- 'waFv2WebACLAndStatementTwo' for a more convenient constructor.
data WAFv2WebACLAndStatementTwo =
  WAFv2WebACLAndStatementTwo
  { _wAFv2WebACLAndStatementTwoStatements :: [WAFv2WebACLStatementThree]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLAndStatementTwo where
  toJSON WAFv2WebACLAndStatementTwo{..} =
    object $
    catMaybes
    [ (Just . ("Statements",) . toJSON) _wAFv2WebACLAndStatementTwoStatements
    ]

-- | Constructor for 'WAFv2WebACLAndStatementTwo' containing required fields
-- as arguments.
waFv2WebACLAndStatementTwo
  :: [WAFv2WebACLStatementThree] -- ^ 'wafwaclastStatements'
  -> WAFv2WebACLAndStatementTwo
waFv2WebACLAndStatementTwo statementsarg =
  WAFv2WebACLAndStatementTwo
  { _wAFv2WebACLAndStatementTwoStatements = statementsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementtwo.html#cfn-wafv2-webacl-andstatementtwo-statements
wafwaclastStatements :: Lens' WAFv2WebACLAndStatementTwo [WAFv2WebACLStatementThree]
wafwaclastStatements = lens _wAFv2WebACLAndStatementTwoStatements (\s a -> s { _wAFv2WebACLAndStatementTwoStatements = a })
