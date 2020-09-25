{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-accesscontrollistconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceAccessControlListConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KendraDataSourceAccessControlListConfiguration. See
-- 'kendraDataSourceAccessControlListConfiguration' for a more convenient
-- constructor.
data KendraDataSourceAccessControlListConfiguration =
  KendraDataSourceAccessControlListConfiguration
  { _kendraDataSourceAccessControlListConfigurationKeyPath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceAccessControlListConfiguration where
  toJSON KendraDataSourceAccessControlListConfiguration{..} =
    object $
    catMaybes
    [ fmap (("KeyPath",) . toJSON) _kendraDataSourceAccessControlListConfigurationKeyPath
    ]

-- | Constructor for 'KendraDataSourceAccessControlListConfiguration'
-- containing required fields as arguments.
kendraDataSourceAccessControlListConfiguration
  :: KendraDataSourceAccessControlListConfiguration
kendraDataSourceAccessControlListConfiguration  =
  KendraDataSourceAccessControlListConfiguration
  { _kendraDataSourceAccessControlListConfigurationKeyPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-accesscontrollistconfiguration.html#cfn-kendra-datasource-accesscontrollistconfiguration-keypath
kdsaclcKeyPath :: Lens' KendraDataSourceAccessControlListConfiguration (Maybe (Val Text))
kdsaclcKeyPath = lens _kendraDataSourceAccessControlListConfigurationKeyPath (\s a -> s { _kendraDataSourceAccessControlListConfigurationKeyPath = a })
