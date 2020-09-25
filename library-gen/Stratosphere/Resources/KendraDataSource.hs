{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html

module Stratosphere.Resources.KendraDataSource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceTagList

-- | Full data type definition for KendraDataSource. See 'kendraDataSource'
-- for a more convenient constructor.
data KendraDataSource =
  KendraDataSource
  { _kendraDataSourceDataSourceConfiguration :: KendraDataSourceDataSourceConfiguration
  , _kendraDataSourceDescription :: Maybe (Val Text)
  , _kendraDataSourceIndexId :: Val Text
  , _kendraDataSourceName :: Val Text
  , _kendraDataSourceRoleArn :: Val Text
  , _kendraDataSourceSchedule :: Maybe (Val Text)
  , _kendraDataSourceTags :: Maybe KendraDataSourceTagList
  , _kendraDataSourceType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties KendraDataSource where
  toResourceProperties KendraDataSource{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Kendra::DataSource"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("DataSourceConfiguration",) . toJSON) _kendraDataSourceDataSourceConfiguration
        , fmap (("Description",) . toJSON) _kendraDataSourceDescription
        , (Just . ("IndexId",) . toJSON) _kendraDataSourceIndexId
        , (Just . ("Name",) . toJSON) _kendraDataSourceName
        , (Just . ("RoleArn",) . toJSON) _kendraDataSourceRoleArn
        , fmap (("Schedule",) . toJSON) _kendraDataSourceSchedule
        , fmap (("Tags",) . toJSON) _kendraDataSourceTags
        , (Just . ("Type",) . toJSON) _kendraDataSourceType
        ]
    }

-- | Constructor for 'KendraDataSource' containing required fields as
-- arguments.
kendraDataSource
  :: KendraDataSourceDataSourceConfiguration -- ^ 'kdsDataSourceConfiguration'
  -> Val Text -- ^ 'kdsIndexId'
  -> Val Text -- ^ 'kdsName'
  -> Val Text -- ^ 'kdsRoleArn'
  -> Val Text -- ^ 'kdsType'
  -> KendraDataSource
kendraDataSource dataSourceConfigurationarg indexIdarg namearg roleArnarg typearg =
  KendraDataSource
  { _kendraDataSourceDataSourceConfiguration = dataSourceConfigurationarg
  , _kendraDataSourceDescription = Nothing
  , _kendraDataSourceIndexId = indexIdarg
  , _kendraDataSourceName = namearg
  , _kendraDataSourceRoleArn = roleArnarg
  , _kendraDataSourceSchedule = Nothing
  , _kendraDataSourceTags = Nothing
  , _kendraDataSourceType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-datasourceconfiguration
kdsDataSourceConfiguration :: Lens' KendraDataSource KendraDataSourceDataSourceConfiguration
kdsDataSourceConfiguration = lens _kendraDataSourceDataSourceConfiguration (\s a -> s { _kendraDataSourceDataSourceConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-description
kdsDescription :: Lens' KendraDataSource (Maybe (Val Text))
kdsDescription = lens _kendraDataSourceDescription (\s a -> s { _kendraDataSourceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-indexid
kdsIndexId :: Lens' KendraDataSource (Val Text)
kdsIndexId = lens _kendraDataSourceIndexId (\s a -> s { _kendraDataSourceIndexId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-name
kdsName :: Lens' KendraDataSource (Val Text)
kdsName = lens _kendraDataSourceName (\s a -> s { _kendraDataSourceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-rolearn
kdsRoleArn :: Lens' KendraDataSource (Val Text)
kdsRoleArn = lens _kendraDataSourceRoleArn (\s a -> s { _kendraDataSourceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-schedule
kdsSchedule :: Lens' KendraDataSource (Maybe (Val Text))
kdsSchedule = lens _kendraDataSourceSchedule (\s a -> s { _kendraDataSourceSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-tags
kdsTags :: Lens' KendraDataSource (Maybe KendraDataSourceTagList)
kdsTags = lens _kendraDataSourceTags (\s a -> s { _kendraDataSourceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-datasource.html#cfn-kendra-datasource-type
kdsType :: Lens' KendraDataSource (Val Text)
kdsType = lens _kendraDataSourceType (\s a -> s { _kendraDataSourceType = a })
