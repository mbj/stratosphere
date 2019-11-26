{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementone.html

module Stratosphere.ResourceProperties.WAFv2WebACLAndStatementOne where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementTwos

-- | Full data type definition for WAFv2WebACLAndStatementOne. See
-- 'waFv2WebACLAndStatementOne' for a more convenient constructor.
data WAFv2WebACLAndStatementOne =
  WAFv2WebACLAndStatementOne
  { _wAFv2WebACLAndStatementOneStatements :: Maybe WAFv2WebACLStatementTwos
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLAndStatementOne where
  toJSON WAFv2WebACLAndStatementOne{..} =
    object $
    catMaybes
    [ fmap (("Statements",) . toJSON) _wAFv2WebACLAndStatementOneStatements
    ]

-- | Constructor for 'WAFv2WebACLAndStatementOne' containing required fields
-- as arguments.
waFv2WebACLAndStatementOne
  :: WAFv2WebACLAndStatementOne
waFv2WebACLAndStatementOne  =
  WAFv2WebACLAndStatementOne
  { _wAFv2WebACLAndStatementOneStatements = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-andstatementone.html#cfn-wafv2-webacl-andstatementone-statements
wafwaclasoStatements :: Lens' WAFv2WebACLAndStatementOne (Maybe WAFv2WebACLStatementTwos)
wafwaclasoStatements = lens _wAFv2WebACLAndStatementOneStatements (\s a -> s { _wAFv2WebACLAndStatementOneStatements = a })
