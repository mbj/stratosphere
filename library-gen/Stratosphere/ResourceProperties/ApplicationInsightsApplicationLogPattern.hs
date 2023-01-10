
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpattern.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationLogPattern where

import Stratosphere.ResourceImports


-- | Full data type definition for ApplicationInsightsApplicationLogPattern.
-- See 'applicationInsightsApplicationLogPattern' for a more convenient
-- constructor.
data ApplicationInsightsApplicationLogPattern =
  ApplicationInsightsApplicationLogPattern
  { _applicationInsightsApplicationLogPatternPattern :: Val Text
  , _applicationInsightsApplicationLogPatternPatternName :: Val Text
  , _applicationInsightsApplicationLogPatternRank :: Val Integer
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationLogPattern where
  toJSON ApplicationInsightsApplicationLogPattern{..} =
    object $
    catMaybes
    [ (Just . ("Pattern",) . toJSON) _applicationInsightsApplicationLogPatternPattern
    , (Just . ("PatternName",) . toJSON) _applicationInsightsApplicationLogPatternPatternName
    , (Just . ("Rank",) . toJSON) _applicationInsightsApplicationLogPatternRank
    ]

-- | Constructor for 'ApplicationInsightsApplicationLogPattern' containing
-- required fields as arguments.
applicationInsightsApplicationLogPattern
  :: Val Text -- ^ 'aialpPattern'
  -> Val Text -- ^ 'aialpPatternName'
  -> Val Integer -- ^ 'aialpRank'
  -> ApplicationInsightsApplicationLogPattern
applicationInsightsApplicationLogPattern patternarg patternNamearg rankarg =
  ApplicationInsightsApplicationLogPattern
  { _applicationInsightsApplicationLogPatternPattern = patternarg
  , _applicationInsightsApplicationLogPatternPatternName = patternNamearg
  , _applicationInsightsApplicationLogPatternRank = rankarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpattern.html#cfn-applicationinsights-application-logpattern-pattern
aialpPattern :: Lens' ApplicationInsightsApplicationLogPattern (Val Text)
aialpPattern = lens _applicationInsightsApplicationLogPatternPattern (\s a -> s { _applicationInsightsApplicationLogPatternPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpattern.html#cfn-applicationinsights-application-logpattern-patternname
aialpPatternName :: Lens' ApplicationInsightsApplicationLogPattern (Val Text)
aialpPatternName = lens _applicationInsightsApplicationLogPatternPatternName (\s a -> s { _applicationInsightsApplicationLogPatternPatternName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-logpattern.html#cfn-applicationinsights-application-logpattern-rank
aialpRank :: Lens' ApplicationInsightsApplicationLogPattern (Val Integer)
aialpRank = lens _applicationInsightsApplicationLogPatternRank (\s a -> s { _applicationInsightsApplicationLogPatternRank = a })
