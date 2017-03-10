{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sqlinjectionmatchset.html

module Stratosphere.Resources.WAFSqlInjectionMatchSet where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFSqlInjectionMatchSetSqlInjectionMatchTuple

-- | Full data type definition for WAFSqlInjectionMatchSet. See
-- 'wafSqlInjectionMatchSet' for a more convenient constructor.
data WAFSqlInjectionMatchSet =
  WAFSqlInjectionMatchSet
  { _wAFSqlInjectionMatchSetName :: Val Text
  , _wAFSqlInjectionMatchSetSqlInjectionMatchTuples :: Maybe [WAFSqlInjectionMatchSetSqlInjectionMatchTuple]
  } deriving (Show, Eq)

instance ToJSON WAFSqlInjectionMatchSet where
  toJSON WAFSqlInjectionMatchSet{..} =
    object $
    catMaybes
    [ Just ("Name" .= _wAFSqlInjectionMatchSetName)
    , ("SqlInjectionMatchTuples" .=) <$> _wAFSqlInjectionMatchSetSqlInjectionMatchTuples
    ]

instance FromJSON WAFSqlInjectionMatchSet where
  parseJSON (Object obj) =
    WAFSqlInjectionMatchSet <$>
      obj .: "Name" <*>
      obj .:? "SqlInjectionMatchTuples"
  parseJSON _ = mempty

-- | Constructor for 'WAFSqlInjectionMatchSet' containing required fields as
-- arguments.
wafSqlInjectionMatchSet
  :: Val Text -- ^ 'wafsimsName'
  -> WAFSqlInjectionMatchSet
wafSqlInjectionMatchSet namearg =
  WAFSqlInjectionMatchSet
  { _wAFSqlInjectionMatchSetName = namearg
  , _wAFSqlInjectionMatchSetSqlInjectionMatchTuples = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sqlinjectionmatchset.html#cfn-waf-sqlinjectionmatchset-name
wafsimsName :: Lens' WAFSqlInjectionMatchSet (Val Text)
wafsimsName = lens _wAFSqlInjectionMatchSetName (\s a -> s { _wAFSqlInjectionMatchSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-sqlinjectionmatchset.html#cfn-waf-sqlinjectionmatchset-sqlinjectionmatchtuples
wafsimsSqlInjectionMatchTuples :: Lens' WAFSqlInjectionMatchSet (Maybe [WAFSqlInjectionMatchSetSqlInjectionMatchTuple])
wafsimsSqlInjectionMatchTuples = lens _wAFSqlInjectionMatchSetSqlInjectionMatchTuples (\s a -> s { _wAFSqlInjectionMatchSetSqlInjectionMatchTuples = a })
