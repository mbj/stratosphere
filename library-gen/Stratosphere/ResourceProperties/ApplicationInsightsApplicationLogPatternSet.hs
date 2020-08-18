{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpatternset.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationLogPatternSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationLogPattern

-- | Full data type definition for
-- ApplicationInsightsApplicationLogPatternSet. See
-- 'applicationInsightsApplicationLogPatternSet' for a more convenient
-- constructor.
data ApplicationInsightsApplicationLogPatternSet =
  ApplicationInsightsApplicationLogPatternSet
  { _applicationInsightsApplicationLogPatternSetLogPatterns :: [ApplicationInsightsApplicationLogPattern]
  , _applicationInsightsApplicationLogPatternSetPatternSetName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationLogPatternSet where
  toJSON ApplicationInsightsApplicationLogPatternSet{..} =
    object $
    catMaybes
    [ (Just . ("LogPatterns",) . toJSON) _applicationInsightsApplicationLogPatternSetLogPatterns
    , (Just . ("PatternSetName",) . toJSON) _applicationInsightsApplicationLogPatternSetPatternSetName
    ]

-- | Constructor for 'ApplicationInsightsApplicationLogPatternSet' containing
-- required fields as arguments.
applicationInsightsApplicationLogPatternSet
  :: [ApplicationInsightsApplicationLogPattern] -- ^ 'aialpsLogPatterns'
  -> Val Text -- ^ 'aialpsPatternSetName'
  -> ApplicationInsightsApplicationLogPatternSet
applicationInsightsApplicationLogPatternSet logPatternsarg patternSetNamearg =
  ApplicationInsightsApplicationLogPatternSet
  { _applicationInsightsApplicationLogPatternSetLogPatterns = logPatternsarg
  , _applicationInsightsApplicationLogPatternSetPatternSetName = patternSetNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpatternset.html#cfn-applicationinsights-application-logpatternset-logpatterns
aialpsLogPatterns :: Lens' ApplicationInsightsApplicationLogPatternSet [ApplicationInsightsApplicationLogPattern]
aialpsLogPatterns = lens _applicationInsightsApplicationLogPatternSetLogPatterns (\s a -> s { _applicationInsightsApplicationLogPatternSetLogPatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpatternset.html#cfn-applicationinsights-application-logpatternset-patternsetname
aialpsPatternSetName :: Lens' ApplicationInsightsApplicationLogPatternSet (Val Text)
aialpsPatternSetName = lens _applicationInsightsApplicationLogPatternSetPatternSetName (\s a -> s { _applicationInsightsApplicationLogPatternSetPatternSetName = a })
