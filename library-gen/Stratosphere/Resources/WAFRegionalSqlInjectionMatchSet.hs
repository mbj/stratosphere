{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html

module Stratosphere.Resources.WAFRegionalSqlInjectionMatchSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple

-- | Full data type definition for WAFRegionalSqlInjectionMatchSet. See
-- 'wafRegionalSqlInjectionMatchSet' for a more convenient constructor.
data WAFRegionalSqlInjectionMatchSet =
  WAFRegionalSqlInjectionMatchSet
  { _wAFRegionalSqlInjectionMatchSetName :: Val Text
  , _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuples :: Maybe [WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple]
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalSqlInjectionMatchSet where
  toResourceProperties WAFRegionalSqlInjectionMatchSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::SqlInjectionMatchSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _wAFRegionalSqlInjectionMatchSetName
        , fmap (("SqlInjectionMatchTuples",) . toJSON) _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuples
        ]
    }

-- | Constructor for 'WAFRegionalSqlInjectionMatchSet' containing required
-- fields as arguments.
wafRegionalSqlInjectionMatchSet
  :: Val Text -- ^ 'wafrsimsName'
  -> WAFRegionalSqlInjectionMatchSet
wafRegionalSqlInjectionMatchSet namearg =
  WAFRegionalSqlInjectionMatchSet
  { _wAFRegionalSqlInjectionMatchSetName = namearg
  , _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuples = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html#cfn-wafregional-sqlinjectionmatchset-name
wafrsimsName :: Lens' WAFRegionalSqlInjectionMatchSet (Val Text)
wafrsimsName = lens _wAFRegionalSqlInjectionMatchSetName (\s a -> s { _wAFRegionalSqlInjectionMatchSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-sqlinjectionmatchset.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuples
wafrsimsSqlInjectionMatchTuples :: Lens' WAFRegionalSqlInjectionMatchSet (Maybe [WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple])
wafrsimsSqlInjectionMatchTuples = lens _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuples (\s a -> s { _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuples = a })
