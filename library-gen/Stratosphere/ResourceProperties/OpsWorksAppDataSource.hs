{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html

module Stratosphere.ResourceProperties.OpsWorksAppDataSource where

import Stratosphere.ResourceImports


-- | Full data type definition for OpsWorksAppDataSource. See
-- 'opsWorksAppDataSource' for a more convenient constructor.
data OpsWorksAppDataSource =
  OpsWorksAppDataSource
  { _opsWorksAppDataSourceArn :: Maybe (Val Text)
  , _opsWorksAppDataSourceDatabaseName :: Maybe (Val Text)
  , _opsWorksAppDataSourceType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksAppDataSource where
  toJSON OpsWorksAppDataSource{..} =
    object $
    catMaybes
    [ fmap (("Arn",) . toJSON) _opsWorksAppDataSourceArn
    , fmap (("DatabaseName",) . toJSON) _opsWorksAppDataSourceDatabaseName
    , fmap (("Type",) . toJSON) _opsWorksAppDataSourceType
    ]

-- | Constructor for 'OpsWorksAppDataSource' containing required fields as
-- arguments.
opsWorksAppDataSource
  :: OpsWorksAppDataSource
opsWorksAppDataSource  =
  OpsWorksAppDataSource
  { _opsWorksAppDataSourceArn = Nothing
  , _opsWorksAppDataSourceDatabaseName = Nothing
  , _opsWorksAppDataSourceType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html#cfn-opsworks-app-datasource-arn
owadsArn :: Lens' OpsWorksAppDataSource (Maybe (Val Text))
owadsArn = lens _opsWorksAppDataSourceArn (\s a -> s { _opsWorksAppDataSourceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html#cfn-opsworks-app-datasource-databasename
owadsDatabaseName :: Lens' OpsWorksAppDataSource (Maybe (Val Text))
owadsDatabaseName = lens _opsWorksAppDataSourceDatabaseName (\s a -> s { _opsWorksAppDataSourceDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html#cfn-opsworks-app-datasource-type
owadsType :: Lens' OpsWorksAppDataSource (Maybe (Val Text))
owadsType = lens _opsWorksAppDataSourceType (\s a -> s { _opsWorksAppDataSourceType = a })
