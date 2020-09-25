{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sqlconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceSqlConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraDataSourceSqlConfiguration. See
-- 'kendraDataSourceSqlConfiguration' for a more convenient constructor.
data KendraDataSourceSqlConfiguration =
  KendraDataSourceSqlConfiguration
  { _kendraDataSourceSqlConfigurationQueryIdentifiersEnclosingOption :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSqlConfiguration where
  toJSON KendraDataSourceSqlConfiguration{..} =
    object $
    catMaybes
    [ fmap (("QueryIdentifiersEnclosingOption",) . toJSON) _kendraDataSourceSqlConfigurationQueryIdentifiersEnclosingOption
    ]

-- | Constructor for 'KendraDataSourceSqlConfiguration' containing required
-- fields as arguments.
kendraDataSourceSqlConfiguration
  :: KendraDataSourceSqlConfiguration
kendraDataSourceSqlConfiguration  =
  KendraDataSourceSqlConfiguration
  { _kendraDataSourceSqlConfigurationQueryIdentifiersEnclosingOption = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sqlconfiguration.html#cfn-kendra-datasource-sqlconfiguration-queryidentifiersenclosingoption
kdsscQueryIdentifiersEnclosingOption :: Lens' KendraDataSourceSqlConfiguration (Maybe (Val Text))
kdsscQueryIdentifiersEnclosingOption = lens _kendraDataSourceSqlConfigurationQueryIdentifiersEnclosingOption (\s a -> s { _kendraDataSourceSqlConfigurationQueryIdentifiersEnclosingOption = a })
