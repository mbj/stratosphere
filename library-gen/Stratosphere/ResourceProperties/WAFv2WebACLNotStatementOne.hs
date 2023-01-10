
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementone.html

module Stratosphere.ResourceProperties.WAFv2WebACLNotStatementOne where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementTwo

-- | Full data type definition for WAFv2WebACLNotStatementOne. See
-- 'waFv2WebACLNotStatementOne' for a more convenient constructor.
data WAFv2WebACLNotStatementOne =
  WAFv2WebACLNotStatementOne
  { _wAFv2WebACLNotStatementOneStatement :: WAFv2WebACLStatementTwo
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLNotStatementOne where
  toJSON WAFv2WebACLNotStatementOne{..} =
    object $
    catMaybes
    [ (Just . ("Statement",) . toJSON) _wAFv2WebACLNotStatementOneStatement
    ]

-- | Constructor for 'WAFv2WebACLNotStatementOne' containing required fields
-- as arguments.
waFv2WebACLNotStatementOne
  :: WAFv2WebACLStatementTwo -- ^ 'wafwaclnsoStatement'
  -> WAFv2WebACLNotStatementOne
waFv2WebACLNotStatementOne statementarg =
  WAFv2WebACLNotStatementOne
  { _wAFv2WebACLNotStatementOneStatement = statementarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementone.html#cfn-wafv2-webacl-notstatementone-statement
wafwaclnsoStatement :: Lens' WAFv2WebACLNotStatementOne WAFv2WebACLStatementTwo
wafwaclnsoStatement = lens _wAFv2WebACLNotStatementOneStatement (\s a -> s { _wAFv2WebACLNotStatementOneStatement = a })
