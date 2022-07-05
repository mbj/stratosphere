{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html

module Stratosphere.Resources.MediaLiveInputSecurityGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveInputSecurityGroupInputWhitelistRuleCidr

-- | Full data type definition for MediaLiveInputSecurityGroup. See
-- 'mediaLiveInputSecurityGroup' for a more convenient constructor.
data MediaLiveInputSecurityGroup =
  MediaLiveInputSecurityGroup
  { _mediaLiveInputSecurityGroupTags :: Maybe Object
  , _mediaLiveInputSecurityGroupWhitelistRules :: Maybe [MediaLiveInputSecurityGroupInputWhitelistRuleCidr]
  } deriving (Show, Eq)

instance ToResourceProperties MediaLiveInputSecurityGroup where
  toResourceProperties MediaLiveInputSecurityGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::MediaLive::InputSecurityGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Tags",) . toJSON) _mediaLiveInputSecurityGroupTags
        , fmap (("WhitelistRules",) . toJSON) _mediaLiveInputSecurityGroupWhitelistRules
        ]
    }

-- | Constructor for 'MediaLiveInputSecurityGroup' containing required fields
-- as arguments.
mediaLiveInputSecurityGroup
  :: MediaLiveInputSecurityGroup
mediaLiveInputSecurityGroup  =
  MediaLiveInputSecurityGroup
  { _mediaLiveInputSecurityGroupTags = Nothing
  , _mediaLiveInputSecurityGroupWhitelistRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html#cfn-medialive-inputsecuritygroup-tags
mlisgTags :: Lens' MediaLiveInputSecurityGroup (Maybe Object)
mlisgTags = lens _mediaLiveInputSecurityGroupTags (\s a -> s { _mediaLiveInputSecurityGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html#cfn-medialive-inputsecuritygroup-whitelistrules
mlisgWhitelistRules :: Lens' MediaLiveInputSecurityGroup (Maybe [MediaLiveInputSecurityGroupInputWhitelistRuleCidr])
mlisgWhitelistRules = lens _mediaLiveInputSecurityGroupWhitelistRules (\s a -> s { _mediaLiveInputSecurityGroupWhitelistRules = a })
