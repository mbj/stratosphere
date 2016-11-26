{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html

module Stratosphere.ResourceProperties.OpsWorksAppDataSource where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksAppDataSource. See
-- | 'opsWorksAppDataSource' for a more convenient constructor.
data OpsWorksAppDataSource =
  OpsWorksAppDataSource
  { _opsWorksAppDataSourceArn :: Maybe (Val Text)
  , _opsWorksAppDataSourceDatabaseName :: Maybe (Val Text)
  , _opsWorksAppDataSourceType :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON OpsWorksAppDataSource where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON OpsWorksAppDataSource where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'OpsWorksAppDataSource' containing required fields as
-- | arguments.
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
