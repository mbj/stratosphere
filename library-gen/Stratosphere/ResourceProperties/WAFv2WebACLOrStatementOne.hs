
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementone.html

module Stratosphere.ResourceProperties.WAFv2WebACLOrStatementOne where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementTwo

-- | Full data type definition for WAFv2WebACLOrStatementOne. See
-- 'waFv2WebACLOrStatementOne' for a more convenient constructor.
data WAFv2WebACLOrStatementOne =
  WAFv2WebACLOrStatementOne
  { _wAFv2WebACLOrStatementOneStatements :: [WAFv2WebACLStatementTwo]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLOrStatementOne where
  toJSON WAFv2WebACLOrStatementOne{..} =
    object $
    catMaybes
    [ (Just . ("Statements",) . toJSON) _wAFv2WebACLOrStatementOneStatements
    ]

-- | Constructor for 'WAFv2WebACLOrStatementOne' containing required fields as
-- arguments.
waFv2WebACLOrStatementOne
  :: [WAFv2WebACLStatementTwo] -- ^ 'wafwaclosoStatements'
  -> WAFv2WebACLOrStatementOne
waFv2WebACLOrStatementOne statementsarg =
  WAFv2WebACLOrStatementOne
  { _wAFv2WebACLOrStatementOneStatements = statementsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-orstatementone.html#cfn-wafv2-webacl-orstatementone-statements
wafwaclosoStatements :: Lens' WAFv2WebACLOrStatementOne [WAFv2WebACLStatementTwo]
wafwaclosoStatements = lens _wAFv2WebACLOrStatementOneStatements (\s a -> s { _wAFv2WebACLOrStatementOneStatements = a })
