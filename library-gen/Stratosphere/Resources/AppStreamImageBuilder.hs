{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html

module Stratosphere.Resources.AppStreamImageBuilder where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppStreamImageBuilderAccessEndpoint
import Stratosphere.ResourceProperties.AppStreamImageBuilderDomainJoinInfo
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.AppStreamImageBuilderVpcConfig

-- | Full data type definition for AppStreamImageBuilder. See
-- 'appStreamImageBuilder' for a more convenient constructor.
data AppStreamImageBuilder =
  AppStreamImageBuilder
  { _appStreamImageBuilderAccessEndpoints :: Maybe [AppStreamImageBuilderAccessEndpoint]
  , _appStreamImageBuilderAppstreamAgentVersion :: Maybe (Val Text)
  , _appStreamImageBuilderDescription :: Maybe (Val Text)
  , _appStreamImageBuilderDisplayName :: Maybe (Val Text)
  , _appStreamImageBuilderDomainJoinInfo :: Maybe AppStreamImageBuilderDomainJoinInfo
  , _appStreamImageBuilderEnableDefaultInternetAccess :: Maybe (Val Bool)
  , _appStreamImageBuilderImageArn :: Maybe (Val Text)
  , _appStreamImageBuilderImageName :: Maybe (Val Text)
  , _appStreamImageBuilderInstanceType :: Val Text
  , _appStreamImageBuilderName :: Val Text
  , _appStreamImageBuilderTags :: Maybe [Tag]
  , _appStreamImageBuilderVpcConfig :: Maybe AppStreamImageBuilderVpcConfig
  } deriving (Show, Eq)

instance ToResourceProperties AppStreamImageBuilder where
  toResourceProperties AppStreamImageBuilder{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppStream::ImageBuilder"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccessEndpoints",) . toJSON) _appStreamImageBuilderAccessEndpoints
        , fmap (("AppstreamAgentVersion",) . toJSON) _appStreamImageBuilderAppstreamAgentVersion
        , fmap (("Description",) . toJSON) _appStreamImageBuilderDescription
        , fmap (("DisplayName",) . toJSON) _appStreamImageBuilderDisplayName
        , fmap (("DomainJoinInfo",) . toJSON) _appStreamImageBuilderDomainJoinInfo
        , fmap (("EnableDefaultInternetAccess",) . toJSON) _appStreamImageBuilderEnableDefaultInternetAccess
        , fmap (("ImageArn",) . toJSON) _appStreamImageBuilderImageArn
        , fmap (("ImageName",) . toJSON) _appStreamImageBuilderImageName
        , (Just . ("InstanceType",) . toJSON) _appStreamImageBuilderInstanceType
        , (Just . ("Name",) . toJSON) _appStreamImageBuilderName
        , fmap (("Tags",) . toJSON) _appStreamImageBuilderTags
        , fmap (("VpcConfig",) . toJSON) _appStreamImageBuilderVpcConfig
        ]
    }

-- | Constructor for 'AppStreamImageBuilder' containing required fields as
-- arguments.
appStreamImageBuilder
  :: Val Text -- ^ 'asibInstanceType'
  -> Val Text -- ^ 'asibName'
  -> AppStreamImageBuilder
appStreamImageBuilder instanceTypearg namearg =
  AppStreamImageBuilder
  { _appStreamImageBuilderAccessEndpoints = Nothing
  , _appStreamImageBuilderAppstreamAgentVersion = Nothing
  , _appStreamImageBuilderDescription = Nothing
  , _appStreamImageBuilderDisplayName = Nothing
  , _appStreamImageBuilderDomainJoinInfo = Nothing
  , _appStreamImageBuilderEnableDefaultInternetAccess = Nothing
  , _appStreamImageBuilderImageArn = Nothing
  , _appStreamImageBuilderImageName = Nothing
  , _appStreamImageBuilderInstanceType = instanceTypearg
  , _appStreamImageBuilderName = namearg
  , _appStreamImageBuilderTags = Nothing
  , _appStreamImageBuilderVpcConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-accessendpoints
asibAccessEndpoints :: Lens' AppStreamImageBuilder (Maybe [AppStreamImageBuilderAccessEndpoint])
asibAccessEndpoints = lens _appStreamImageBuilderAccessEndpoints (\s a -> s { _appStreamImageBuilderAccessEndpoints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-appstreamagentversion
asibAppstreamAgentVersion :: Lens' AppStreamImageBuilder (Maybe (Val Text))
asibAppstreamAgentVersion = lens _appStreamImageBuilderAppstreamAgentVersion (\s a -> s { _appStreamImageBuilderAppstreamAgentVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-description
asibDescription :: Lens' AppStreamImageBuilder (Maybe (Val Text))
asibDescription = lens _appStreamImageBuilderDescription (\s a -> s { _appStreamImageBuilderDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-displayname
asibDisplayName :: Lens' AppStreamImageBuilder (Maybe (Val Text))
asibDisplayName = lens _appStreamImageBuilderDisplayName (\s a -> s { _appStreamImageBuilderDisplayName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-domainjoininfo
asibDomainJoinInfo :: Lens' AppStreamImageBuilder (Maybe AppStreamImageBuilderDomainJoinInfo)
asibDomainJoinInfo = lens _appStreamImageBuilderDomainJoinInfo (\s a -> s { _appStreamImageBuilderDomainJoinInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-enabledefaultinternetaccess
asibEnableDefaultInternetAccess :: Lens' AppStreamImageBuilder (Maybe (Val Bool))
asibEnableDefaultInternetAccess = lens _appStreamImageBuilderEnableDefaultInternetAccess (\s a -> s { _appStreamImageBuilderEnableDefaultInternetAccess = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-imagearn
asibImageArn :: Lens' AppStreamImageBuilder (Maybe (Val Text))
asibImageArn = lens _appStreamImageBuilderImageArn (\s a -> s { _appStreamImageBuilderImageArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-imagename
asibImageName :: Lens' AppStreamImageBuilder (Maybe (Val Text))
asibImageName = lens _appStreamImageBuilderImageName (\s a -> s { _appStreamImageBuilderImageName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-instancetype
asibInstanceType :: Lens' AppStreamImageBuilder (Val Text)
asibInstanceType = lens _appStreamImageBuilderInstanceType (\s a -> s { _appStreamImageBuilderInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-name
asibName :: Lens' AppStreamImageBuilder (Val Text)
asibName = lens _appStreamImageBuilderName (\s a -> s { _appStreamImageBuilderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-tags
asibTags :: Lens' AppStreamImageBuilder (Maybe [Tag])
asibTags = lens _appStreamImageBuilderTags (\s a -> s { _appStreamImageBuilderTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-imagebuilder.html#cfn-appstream-imagebuilder-vpcconfig
asibVpcConfig :: Lens' AppStreamImageBuilder (Maybe AppStreamImageBuilderVpcConfig)
asibVpcConfig = lens _appStreamImageBuilderVpcConfig (\s a -> s { _appStreamImageBuilderVpcConfig = a })
