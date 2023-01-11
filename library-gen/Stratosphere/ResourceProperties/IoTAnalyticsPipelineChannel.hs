
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html

module Stratosphere.ResourceProperties.IoTAnalyticsPipelineChannel where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsPipelineChannel. See
-- 'ioTAnalyticsPipelineChannel' for a more convenient constructor.
data IoTAnalyticsPipelineChannel =
  IoTAnalyticsPipelineChannel
  { _ioTAnalyticsPipelineChannelChannelName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineChannelName :: Maybe (Val Text)
  , _ioTAnalyticsPipelineChannelNext :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsPipelineChannel where
  toJSON IoTAnalyticsPipelineChannel{..} =
    object $
    catMaybes
    [ fmap (("ChannelName",) . toJSON) _ioTAnalyticsPipelineChannelChannelName
    , fmap (("Name",) . toJSON) _ioTAnalyticsPipelineChannelName
    , fmap (("Next",) . toJSON) _ioTAnalyticsPipelineChannelNext
    ]

-- | Constructor for 'IoTAnalyticsPipelineChannel' containing required fields
-- as arguments.
ioTAnalyticsPipelineChannel
  :: IoTAnalyticsPipelineChannel
ioTAnalyticsPipelineChannel  =
  IoTAnalyticsPipelineChannel
  { _ioTAnalyticsPipelineChannelChannelName = Nothing
  , _ioTAnalyticsPipelineChannelName = Nothing
  , _ioTAnalyticsPipelineChannelNext = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html#cfn-iotanalytics-pipeline-channel-channelname
itapcChannelName :: Lens' IoTAnalyticsPipelineChannel (Maybe (Val Text))
itapcChannelName = lens _ioTAnalyticsPipelineChannelChannelName (\s a -> s { _ioTAnalyticsPipelineChannelChannelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html#cfn-iotanalytics-pipeline-channel-name
itapcName :: Lens' IoTAnalyticsPipelineChannel (Maybe (Val Text))
itapcName = lens _ioTAnalyticsPipelineChannelName (\s a -> s { _ioTAnalyticsPipelineChannelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-channel.html#cfn-iotanalytics-pipeline-channel-next
itapcNext :: Lens' IoTAnalyticsPipelineChannel (Maybe (Val Text))
itapcNext = lens _ioTAnalyticsPipelineChannelNext (\s a -> s { _ioTAnalyticsPipelineChannelNext = a })
