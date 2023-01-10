
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeguruprofiler-profilinggroup-channel.html

module Stratosphere.ResourceProperties.CodeGuruProfilerProfilingGroupChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeGuruProfilerProfilingGroupChannel. See
-- 'codeGuruProfilerProfilingGroupChannel' for a more convenient
-- constructor.
data CodeGuruProfilerProfilingGroupChannel =
  CodeGuruProfilerProfilingGroupChannel
  { _codeGuruProfilerProfilingGroupChannelchannelId :: Maybe (Val Text)
  , _codeGuruProfilerProfilingGroupChannelchannelUri :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeGuruProfilerProfilingGroupChannel where
  toJSON CodeGuruProfilerProfilingGroupChannel{..} =
    object $
    catMaybes
    [ fmap (("channelId",) . toJSON) _codeGuruProfilerProfilingGroupChannelchannelId
    , (Just . ("channelUri",) . toJSON) _codeGuruProfilerProfilingGroupChannelchannelUri
    ]

-- | Constructor for 'CodeGuruProfilerProfilingGroupChannel' containing
-- required fields as arguments.
codeGuruProfilerProfilingGroupChannel
  :: Val Text -- ^ 'cgppgcchannelUri'
  -> CodeGuruProfilerProfilingGroupChannel
codeGuruProfilerProfilingGroupChannel channelUriarg =
  CodeGuruProfilerProfilingGroupChannel
  { _codeGuruProfilerProfilingGroupChannelchannelId = Nothing
  , _codeGuruProfilerProfilingGroupChannelchannelUri = channelUriarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeguruprofiler-profilinggroup-channel.html#cfn-codeguruprofiler-profilinggroup-channel-channelid
cgppgcchannelId :: Lens' CodeGuruProfilerProfilingGroupChannel (Maybe (Val Text))
cgppgcchannelId = lens _codeGuruProfilerProfilingGroupChannelchannelId (\s a -> s { _codeGuruProfilerProfilingGroupChannelchannelId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeguruprofiler-profilinggroup-channel.html#cfn-codeguruprofiler-profilinggroup-channel-channeluri
cgppgcchannelUri :: Lens' CodeGuruProfilerProfilingGroupChannel (Val Text)
cgppgcchannelUri = lens _codeGuruProfilerProfilingGroupChannelchannelUri (\s a -> s { _codeGuruProfilerProfilingGroupChannelchannelUri = a })
