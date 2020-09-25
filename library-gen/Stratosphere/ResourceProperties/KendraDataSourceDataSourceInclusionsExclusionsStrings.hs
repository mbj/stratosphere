{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceinclusionsexclusionsstrings.html

module Stratosphere.ResourceProperties.KendraDataSourceDataSourceInclusionsExclusionsStrings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KendraDataSourceDataSourceInclusionsExclusionsStrings. See
-- 'kendraDataSourceDataSourceInclusionsExclusionsStrings' for a more
-- convenient constructor.
data KendraDataSourceDataSourceInclusionsExclusionsStrings =
  KendraDataSourceDataSourceInclusionsExclusionsStrings
  { _kendraDataSourceDataSourceInclusionsExclusionsStringsDataSourceInclusionsExclusionsStrings :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceDataSourceInclusionsExclusionsStrings where
  toJSON KendraDataSourceDataSourceInclusionsExclusionsStrings{..} =
    object $
    catMaybes
    [ fmap (("DataSourceInclusionsExclusionsStrings",) . toJSON) _kendraDataSourceDataSourceInclusionsExclusionsStringsDataSourceInclusionsExclusionsStrings
    ]

-- | Constructor for 'KendraDataSourceDataSourceInclusionsExclusionsStrings'
-- containing required fields as arguments.
kendraDataSourceDataSourceInclusionsExclusionsStrings
  :: KendraDataSourceDataSourceInclusionsExclusionsStrings
kendraDataSourceDataSourceInclusionsExclusionsStrings  =
  KendraDataSourceDataSourceInclusionsExclusionsStrings
  { _kendraDataSourceDataSourceInclusionsExclusionsStringsDataSourceInclusionsExclusionsStrings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceinclusionsexclusionsstrings.html#cfn-kendra-datasource-datasourceinclusionsexclusionsstrings-datasourceinclusionsexclusionsstrings
kdsdsiesDataSourceInclusionsExclusionsStrings :: Lens' KendraDataSourceDataSourceInclusionsExclusionsStrings (Maybe (ValList Text))
kdsdsiesDataSourceInclusionsExclusionsStrings = lens _kendraDataSourceDataSourceInclusionsExclusionsStringsDataSourceInclusionsExclusionsStrings (\s a -> s { _kendraDataSourceDataSourceInclusionsExclusionsStringsDataSourceInclusionsExclusionsStrings = a })
