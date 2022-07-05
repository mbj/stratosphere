{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html

module Stratosphere.Resources.SageMakerWorkteam where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerWorkteamMemberDefinition
import Stratosphere.ResourceProperties.SageMakerWorkteamNotificationConfiguration
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SageMakerWorkteam. See 'sageMakerWorkteam'
-- for a more convenient constructor.
data SageMakerWorkteam =
  SageMakerWorkteam
  { _sageMakerWorkteamDescription :: Maybe (Val Text)
  , _sageMakerWorkteamMemberDefinitions :: Maybe [SageMakerWorkteamMemberDefinition]
  , _sageMakerWorkteamNotificationConfiguration :: Maybe SageMakerWorkteamNotificationConfiguration
  , _sageMakerWorkteamTags :: Maybe [Tag]
  , _sageMakerWorkteamWorkteamName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties SageMakerWorkteam where
  toResourceProperties SageMakerWorkteam{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SageMaker::Workteam"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _sageMakerWorkteamDescription
        , fmap (("MemberDefinitions",) . toJSON) _sageMakerWorkteamMemberDefinitions
        , fmap (("NotificationConfiguration",) . toJSON) _sageMakerWorkteamNotificationConfiguration
        , fmap (("Tags",) . toJSON) _sageMakerWorkteamTags
        , fmap (("WorkteamName",) . toJSON) _sageMakerWorkteamWorkteamName
        ]
    }

-- | Constructor for 'SageMakerWorkteam' containing required fields as
-- arguments.
sageMakerWorkteam
  :: SageMakerWorkteam
sageMakerWorkteam  =
  SageMakerWorkteam
  { _sageMakerWorkteamDescription = Nothing
  , _sageMakerWorkteamMemberDefinitions = Nothing
  , _sageMakerWorkteamNotificationConfiguration = Nothing
  , _sageMakerWorkteamTags = Nothing
  , _sageMakerWorkteamWorkteamName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-description
smwDescription :: Lens' SageMakerWorkteam (Maybe (Val Text))
smwDescription = lens _sageMakerWorkteamDescription (\s a -> s { _sageMakerWorkteamDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-memberdefinitions
smwMemberDefinitions :: Lens' SageMakerWorkteam (Maybe [SageMakerWorkteamMemberDefinition])
smwMemberDefinitions = lens _sageMakerWorkteamMemberDefinitions (\s a -> s { _sageMakerWorkteamMemberDefinitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-notificationconfiguration
smwNotificationConfiguration :: Lens' SageMakerWorkteam (Maybe SageMakerWorkteamNotificationConfiguration)
smwNotificationConfiguration = lens _sageMakerWorkteamNotificationConfiguration (\s a -> s { _sageMakerWorkteamNotificationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-tags
smwTags :: Lens' SageMakerWorkteam (Maybe [Tag])
smwTags = lens _sageMakerWorkteamTags (\s a -> s { _sageMakerWorkteamTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-workteam.html#cfn-sagemaker-workteam-workteamname
smwWorkteamName :: Lens' SageMakerWorkteam (Maybe (Val Text))
smwWorkteamName = lens _sageMakerWorkteamWorkteamName (\s a -> s { _sageMakerWorkteamWorkteamName = a })
