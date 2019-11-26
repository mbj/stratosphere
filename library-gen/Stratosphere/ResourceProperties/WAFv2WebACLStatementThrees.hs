{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthrees.html

module Stratosphere.ResourceProperties.WAFv2WebACLStatementThrees where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementThree

-- | Full data type definition for WAFv2WebACLStatementThrees. See
-- 'waFv2WebACLStatementThrees' for a more convenient constructor.
data WAFv2WebACLStatementThrees =
  WAFv2WebACLStatementThrees
  { _wAFv2WebACLStatementThreesStatementThrees :: Maybe [WAFv2WebACLStatementThree]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLStatementThrees where
  toJSON WAFv2WebACLStatementThrees{..} =
    object $
    catMaybes
    [ fmap (("StatementThrees",) . toJSON) _wAFv2WebACLStatementThreesStatementThrees
    ]

-- | Constructor for 'WAFv2WebACLStatementThrees' containing required fields
-- as arguments.
waFv2WebACLStatementThrees
  :: WAFv2WebACLStatementThrees
waFv2WebACLStatementThrees  =
  WAFv2WebACLStatementThrees
  { _wAFv2WebACLStatementThreesStatementThrees = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthrees.html#cfn-wafv2-webacl-statementthrees-statementthrees
wafwaclstStatementThrees :: Lens' WAFv2WebACLStatementThrees (Maybe [WAFv2WebACLStatementThree])
wafwaclstStatementThrees = lens _wAFv2WebACLStatementThreesStatementThrees (\s a -> s { _wAFv2WebACLStatementThreesStatementThrees = a })
