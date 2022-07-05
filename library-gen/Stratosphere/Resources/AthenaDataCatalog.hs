{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html

module Stratosphere.Resources.AthenaDataCatalog where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AthenaDataCatalogTags

-- | Full data type definition for AthenaDataCatalog. See 'athenaDataCatalog'
-- for a more convenient constructor.
data AthenaDataCatalog =
  AthenaDataCatalog
  { _athenaDataCatalogDescription :: Maybe (Val Text)
  , _athenaDataCatalogName :: Val Text
  , _athenaDataCatalogParameters :: Maybe Object
  , _athenaDataCatalogTags :: Maybe AthenaDataCatalogTags
  , _athenaDataCatalogType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AthenaDataCatalog where
  toResourceProperties AthenaDataCatalog{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Athena::DataCatalog"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _athenaDataCatalogDescription
        , (Just . ("Name",) . toJSON) _athenaDataCatalogName
        , fmap (("Parameters",) . toJSON) _athenaDataCatalogParameters
        , fmap (("Tags",) . toJSON) _athenaDataCatalogTags
        , (Just . ("Type",) . toJSON) _athenaDataCatalogType
        ]
    }

-- | Constructor for 'AthenaDataCatalog' containing required fields as
-- arguments.
athenaDataCatalog
  :: Val Text -- ^ 'adcName'
  -> Val Text -- ^ 'adcType'
  -> AthenaDataCatalog
athenaDataCatalog namearg typearg =
  AthenaDataCatalog
  { _athenaDataCatalogDescription = Nothing
  , _athenaDataCatalogName = namearg
  , _athenaDataCatalogParameters = Nothing
  , _athenaDataCatalogTags = Nothing
  , _athenaDataCatalogType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-description
adcDescription :: Lens' AthenaDataCatalog (Maybe (Val Text))
adcDescription = lens _athenaDataCatalogDescription (\s a -> s { _athenaDataCatalogDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-name
adcName :: Lens' AthenaDataCatalog (Val Text)
adcName = lens _athenaDataCatalogName (\s a -> s { _athenaDataCatalogName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-parameters
adcParameters :: Lens' AthenaDataCatalog (Maybe Object)
adcParameters = lens _athenaDataCatalogParameters (\s a -> s { _athenaDataCatalogParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-tags
adcTags :: Lens' AthenaDataCatalog (Maybe AthenaDataCatalogTags)
adcTags = lens _athenaDataCatalogTags (\s a -> s { _athenaDataCatalogTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-datacatalog.html#cfn-athena-datacatalog-type
adcType :: Lens' AthenaDataCatalog (Val Text)
adcType = lens _athenaDataCatalogType (\s a -> s { _athenaDataCatalogType = a })
