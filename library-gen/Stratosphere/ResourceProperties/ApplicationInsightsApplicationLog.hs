
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-log.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationLog where

import Stratosphere.ResourceImports


-- | Full data type definition for ApplicationInsightsApplicationLog. See
-- 'applicationInsightsApplicationLog' for a more convenient constructor.
data ApplicationInsightsApplicationLog =
  ApplicationInsightsApplicationLog
  { _applicationInsightsApplicationLogEncoding :: Maybe (Val Text)
  , _applicationInsightsApplicationLogLogGroupName :: Maybe (Val Text)
  , _applicationInsightsApplicationLogLogPath :: Maybe (Val Text)
  , _applicationInsightsApplicationLogLogType :: Val Text
  , _applicationInsightsApplicationLogPatternSet :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationLog where
  toJSON ApplicationInsightsApplicationLog{..} =
    object $
    catMaybes
    [ fmap (("Encoding",) . toJSON) _applicationInsightsApplicationLogEncoding
    , fmap (("LogGroupName",) . toJSON) _applicationInsightsApplicationLogLogGroupName
    , fmap (("LogPath",) . toJSON) _applicationInsightsApplicationLogLogPath
    , (Just . ("LogType",) . toJSON) _applicationInsightsApplicationLogLogType
    , fmap (("PatternSet",) . toJSON) _applicationInsightsApplicationLogPatternSet
    ]

-- | Constructor for 'ApplicationInsightsApplicationLog' containing required
-- fields as arguments.
applicationInsightsApplicationLog
  :: Val Text -- ^ 'aialLogType'
  -> ApplicationInsightsApplicationLog
applicationInsightsApplicationLog logTypearg =
  ApplicationInsightsApplicationLog
  { _applicationInsightsApplicationLogEncoding = Nothing
  , _applicationInsightsApplicationLogLogGroupName = Nothing
  , _applicationInsightsApplicationLogLogPath = Nothing
  , _applicationInsightsApplicationLogLogType = logTypearg
  , _applicationInsightsApplicationLogPatternSet = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-log.html#cfn-applicationinsights-application-log-encoding
aialEncoding :: Lens' ApplicationInsightsApplicationLog (Maybe (Val Text))
aialEncoding = lens _applicationInsightsApplicationLogEncoding (\s a -> s { _applicationInsightsApplicationLogEncoding = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-log.html#cfn-applicationinsights-application-log-loggroupname
aialLogGroupName :: Lens' ApplicationInsightsApplicationLog (Maybe (Val Text))
aialLogGroupName = lens _applicationInsightsApplicationLogLogGroupName (\s a -> s { _applicationInsightsApplicationLogLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-log.html#cfn-applicationinsights-application-log-logpath
aialLogPath :: Lens' ApplicationInsightsApplicationLog (Maybe (Val Text))
aialLogPath = lens _applicationInsightsApplicationLogLogPath (\s a -> s { _applicationInsightsApplicationLogLogPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-log.html#cfn-applicationinsights-application-log-logtype
aialLogType :: Lens' ApplicationInsightsApplicationLog (Val Text)
aialLogType = lens _applicationInsightsApplicationLogLogType (\s a -> s { _applicationInsightsApplicationLogLogType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-log.html#cfn-applicationinsights-application-log-patternset
aialPatternSet :: Lens' ApplicationInsightsApplicationLog (Maybe (Val Text))
aialPatternSet = lens _applicationInsightsApplicationLogPatternSet (\s a -> s { _applicationInsightsApplicationLogPatternSet = a })
