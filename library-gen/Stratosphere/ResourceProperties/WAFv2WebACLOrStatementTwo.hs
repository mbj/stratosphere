
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2WebACLOrStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementThree

-- | Full data type definition for WAFv2WebACLOrStatementTwo. See
-- 'waFv2WebACLOrStatementTwo' for a more convenient constructor.
data WAFv2WebACLOrStatementTwo =
  WAFv2WebACLOrStatementTwo
  { _wAFv2WebACLOrStatementTwoStatements :: [WAFv2WebACLStatementThree]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLOrStatementTwo where
  toJSON WAFv2WebACLOrStatementTwo{..} =
    object $
    catMaybes
    [ (Just . ("Statements",) . toJSON) _wAFv2WebACLOrStatementTwoStatements
    ]

-- | Constructor for 'WAFv2WebACLOrStatementTwo' containing required fields as
-- arguments.
waFv2WebACLOrStatementTwo
  :: [WAFv2WebACLStatementThree] -- ^ 'wafwaclostStatements'
  -> WAFv2WebACLOrStatementTwo
waFv2WebACLOrStatementTwo statementsarg =
  WAFv2WebACLOrStatementTwo
  { _wAFv2WebACLOrStatementTwoStatements = statementsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementtwo.html#cfn-wafv2-webacl-orstatementtwo-statements
wafwaclostStatements :: Lens' WAFv2WebACLOrStatementTwo [WAFv2WebACLStatementThree]
wafwaclostStatements = lens _wAFv2WebACLOrStatementTwoStatements (\s a -> s { _wAFv2WebACLOrStatementTwoStatements = a })
