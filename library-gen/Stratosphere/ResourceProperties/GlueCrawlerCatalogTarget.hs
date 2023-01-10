
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html

module Stratosphere.ResourceProperties.GlueCrawlerCatalogTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueCrawlerCatalogTarget. See
-- 'glueCrawlerCatalogTarget' for a more convenient constructor.
data GlueCrawlerCatalogTarget =
  GlueCrawlerCatalogTarget
  { _glueCrawlerCatalogTargetDatabaseName :: Maybe (Val Text)
  , _glueCrawlerCatalogTargetTables :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON GlueCrawlerCatalogTarget where
  toJSON GlueCrawlerCatalogTarget{..} =
    object $
    catMaybes
    [ fmap (("DatabaseName",) . toJSON) _glueCrawlerCatalogTargetDatabaseName
    , fmap (("Tables",) . toJSON) _glueCrawlerCatalogTargetTables
    ]

-- | Constructor for 'GlueCrawlerCatalogTarget' containing required fields as
-- arguments.
glueCrawlerCatalogTarget
  :: GlueCrawlerCatalogTarget
glueCrawlerCatalogTarget  =
  GlueCrawlerCatalogTarget
  { _glueCrawlerCatalogTargetDatabaseName = Nothing
  , _glueCrawlerCatalogTargetTables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html#cfn-glue-crawler-catalogtarget-databasename
gcctDatabaseName :: Lens' GlueCrawlerCatalogTarget (Maybe (Val Text))
gcctDatabaseName = lens _glueCrawlerCatalogTargetDatabaseName (\s a -> s { _glueCrawlerCatalogTargetDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html#cfn-glue-crawler-catalogtarget-tables
gcctTables :: Lens' GlueCrawlerCatalogTarget (Maybe (ValList Text))
gcctTables = lens _glueCrawlerCatalogTargetTables (\s a -> s { _glueCrawlerCatalogTargetTables = a })
