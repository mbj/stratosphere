{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlossbehavior.html

module Stratosphere.ResourceProperties.MediaLiveChannelInputLossBehavior where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelInputLocation

-- | Full data type definition for MediaLiveChannelInputLossBehavior. See
-- 'mediaLiveChannelInputLossBehavior' for a more convenient constructor.
data MediaLiveChannelInputLossBehavior =
  MediaLiveChannelInputLossBehavior
  { _mediaLiveChannelInputLossBehaviorBlackFrameMsec :: Maybe (Val Integer)
  , _mediaLiveChannelInputLossBehaviorInputLossImageColor :: Maybe (Val Text)
  , _mediaLiveChannelInputLossBehaviorInputLossImageSlate :: Maybe MediaLiveChannelInputLocation
  , _mediaLiveChannelInputLossBehaviorInputLossImageType :: Maybe (Val Text)
  , _mediaLiveChannelInputLossBehaviorRepeatFrameMsec :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelInputLossBehavior where
  toJSON MediaLiveChannelInputLossBehavior{..} =
    object $
    catMaybes
    [ fmap (("BlackFrameMsec",) . toJSON) _mediaLiveChannelInputLossBehaviorBlackFrameMsec
    , fmap (("InputLossImageColor",) . toJSON) _mediaLiveChannelInputLossBehaviorInputLossImageColor
    , fmap (("InputLossImageSlate",) . toJSON) _mediaLiveChannelInputLossBehaviorInputLossImageSlate
    , fmap (("InputLossImageType",) . toJSON) _mediaLiveChannelInputLossBehaviorInputLossImageType
    , fmap (("RepeatFrameMsec",) . toJSON) _mediaLiveChannelInputLossBehaviorRepeatFrameMsec
    ]

-- | Constructor for 'MediaLiveChannelInputLossBehavior' containing required
-- fields as arguments.
mediaLiveChannelInputLossBehavior
  :: MediaLiveChannelInputLossBehavior
mediaLiveChannelInputLossBehavior  =
  MediaLiveChannelInputLossBehavior
  { _mediaLiveChannelInputLossBehaviorBlackFrameMsec = Nothing
  , _mediaLiveChannelInputLossBehaviorInputLossImageColor = Nothing
  , _mediaLiveChannelInputLossBehaviorInputLossImageSlate = Nothing
  , _mediaLiveChannelInputLossBehaviorInputLossImageType = Nothing
  , _mediaLiveChannelInputLossBehaviorRepeatFrameMsec = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlossbehavior.html#cfn-medialive-channel-inputlossbehavior-blackframemsec
mlcilbBlackFrameMsec :: Lens' MediaLiveChannelInputLossBehavior (Maybe (Val Integer))
mlcilbBlackFrameMsec = lens _mediaLiveChannelInputLossBehaviorBlackFrameMsec (\s a -> s { _mediaLiveChannelInputLossBehaviorBlackFrameMsec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlossbehavior.html#cfn-medialive-channel-inputlossbehavior-inputlossimagecolor
mlcilbInputLossImageColor :: Lens' MediaLiveChannelInputLossBehavior (Maybe (Val Text))
mlcilbInputLossImageColor = lens _mediaLiveChannelInputLossBehaviorInputLossImageColor (\s a -> s { _mediaLiveChannelInputLossBehaviorInputLossImageColor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlossbehavior.html#cfn-medialive-channel-inputlossbehavior-inputlossimageslate
mlcilbInputLossImageSlate :: Lens' MediaLiveChannelInputLossBehavior (Maybe MediaLiveChannelInputLocation)
mlcilbInputLossImageSlate = lens _mediaLiveChannelInputLossBehaviorInputLossImageSlate (\s a -> s { _mediaLiveChannelInputLossBehaviorInputLossImageSlate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlossbehavior.html#cfn-medialive-channel-inputlossbehavior-inputlossimagetype
mlcilbInputLossImageType :: Lens' MediaLiveChannelInputLossBehavior (Maybe (Val Text))
mlcilbInputLossImageType = lens _mediaLiveChannelInputLossBehaviorInputLossImageType (\s a -> s { _mediaLiveChannelInputLossBehaviorInputLossImageType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlossbehavior.html#cfn-medialive-channel-inputlossbehavior-repeatframemsec
mlcilbRepeatFrameMsec :: Lens' MediaLiveChannelInputLossBehavior (Maybe (Val Integer))
mlcilbRepeatFrameMsec = lens _mediaLiveChannelInputLossBehaviorRepeatFrameMsec (\s a -> s { _mediaLiveChannelInputLossBehaviorRepeatFrameMsec = a })
