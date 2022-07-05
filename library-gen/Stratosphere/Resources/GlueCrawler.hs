{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html

module Stratosphere.Resources.GlueCrawler where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueCrawlerSchedule
import Stratosphere.ResourceProperties.GlueCrawlerSchemaChangePolicy
import Stratosphere.ResourceProperties.GlueCrawlerTargets

-- | Full data type definition for GlueCrawler. See 'glueCrawler' for a more
-- convenient constructor.
data GlueCrawler =
  GlueCrawler
  { _glueCrawlerClassifiers :: Maybe (ValList Text)
  , _glueCrawlerConfiguration :: Maybe (Val Text)
  , _glueCrawlerCrawlerSecurityConfiguration :: Maybe (Val Text)
  , _glueCrawlerDatabaseName :: Maybe (Val Text)
  , _glueCrawlerDescription :: Maybe (Val Text)
  , _glueCrawlerName :: Maybe (Val Text)
  , _glueCrawlerRole :: Val Text
  , _glueCrawlerSchedule :: Maybe GlueCrawlerSchedule
  , _glueCrawlerSchemaChangePolicy :: Maybe GlueCrawlerSchemaChangePolicy
  , _glueCrawlerTablePrefix :: Maybe (Val Text)
  , _glueCrawlerTags :: Maybe Object
  , _glueCrawlerTargets :: GlueCrawlerTargets
  } deriving (Show, Eq)

instance ToResourceProperties GlueCrawler where
  toResourceProperties GlueCrawler{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::Crawler"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Classifiers",) . toJSON) _glueCrawlerClassifiers
        , fmap (("Configuration",) . toJSON) _glueCrawlerConfiguration
        , fmap (("CrawlerSecurityConfiguration",) . toJSON) _glueCrawlerCrawlerSecurityConfiguration
        , fmap (("DatabaseName",) . toJSON) _glueCrawlerDatabaseName
        , fmap (("Description",) . toJSON) _glueCrawlerDescription
        , fmap (("Name",) . toJSON) _glueCrawlerName
        , (Just . ("Role",) . toJSON) _glueCrawlerRole
        , fmap (("Schedule",) . toJSON) _glueCrawlerSchedule
        , fmap (("SchemaChangePolicy",) . toJSON) _glueCrawlerSchemaChangePolicy
        , fmap (("TablePrefix",) . toJSON) _glueCrawlerTablePrefix
        , fmap (("Tags",) . toJSON) _glueCrawlerTags
        , (Just . ("Targets",) . toJSON) _glueCrawlerTargets
        ]
    }

-- | Constructor for 'GlueCrawler' containing required fields as arguments.
glueCrawler
  :: Val Text -- ^ 'gcRole'
  -> GlueCrawlerTargets -- ^ 'gcTargets'
  -> GlueCrawler
glueCrawler rolearg targetsarg =
  GlueCrawler
  { _glueCrawlerClassifiers = Nothing
  , _glueCrawlerConfiguration = Nothing
  , _glueCrawlerCrawlerSecurityConfiguration = Nothing
  , _glueCrawlerDatabaseName = Nothing
  , _glueCrawlerDescription = Nothing
  , _glueCrawlerName = Nothing
  , _glueCrawlerRole = rolearg
  , _glueCrawlerSchedule = Nothing
  , _glueCrawlerSchemaChangePolicy = Nothing
  , _glueCrawlerTablePrefix = Nothing
  , _glueCrawlerTags = Nothing
  , _glueCrawlerTargets = targetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-classifiers
gcClassifiers :: Lens' GlueCrawler (Maybe (ValList Text))
gcClassifiers = lens _glueCrawlerClassifiers (\s a -> s { _glueCrawlerClassifiers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-configuration
gcConfiguration :: Lens' GlueCrawler (Maybe (Val Text))
gcConfiguration = lens _glueCrawlerConfiguration (\s a -> s { _glueCrawlerConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-crawlersecurityconfiguration
gcCrawlerSecurityConfiguration :: Lens' GlueCrawler (Maybe (Val Text))
gcCrawlerSecurityConfiguration = lens _glueCrawlerCrawlerSecurityConfiguration (\s a -> s { _glueCrawlerCrawlerSecurityConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-databasename
gcDatabaseName :: Lens' GlueCrawler (Maybe (Val Text))
gcDatabaseName = lens _glueCrawlerDatabaseName (\s a -> s { _glueCrawlerDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-description
gcDescription :: Lens' GlueCrawler (Maybe (Val Text))
gcDescription = lens _glueCrawlerDescription (\s a -> s { _glueCrawlerDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-name
gcName :: Lens' GlueCrawler (Maybe (Val Text))
gcName = lens _glueCrawlerName (\s a -> s { _glueCrawlerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-role
gcRole :: Lens' GlueCrawler (Val Text)
gcRole = lens _glueCrawlerRole (\s a -> s { _glueCrawlerRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-schedule
gcSchedule :: Lens' GlueCrawler (Maybe GlueCrawlerSchedule)
gcSchedule = lens _glueCrawlerSchedule (\s a -> s { _glueCrawlerSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-schemachangepolicy
gcSchemaChangePolicy :: Lens' GlueCrawler (Maybe GlueCrawlerSchemaChangePolicy)
gcSchemaChangePolicy = lens _glueCrawlerSchemaChangePolicy (\s a -> s { _glueCrawlerSchemaChangePolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-tableprefix
gcTablePrefix :: Lens' GlueCrawler (Maybe (Val Text))
gcTablePrefix = lens _glueCrawlerTablePrefix (\s a -> s { _glueCrawlerTablePrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-tags
gcTags :: Lens' GlueCrawler (Maybe Object)
gcTags = lens _glueCrawlerTags (\s a -> s { _glueCrawlerTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-targets
gcTargets :: Lens' GlueCrawler GlueCrawlerTargets
gcTargets = lens _glueCrawlerTargets (\s a -> s { _glueCrawlerTargets = a })
