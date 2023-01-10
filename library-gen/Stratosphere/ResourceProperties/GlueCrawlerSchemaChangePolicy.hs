
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schemachangepolicy.html

module Stratosphere.ResourceProperties.GlueCrawlerSchemaChangePolicy where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GlueCrawlerSchemaChangePolicy. See
-- 'glueCrawlerSchemaChangePolicy' for a more convenient constructor.
data GlueCrawlerSchemaChangePolicy =
  GlueCrawlerSchemaChangePolicy
  { _glueCrawlerSchemaChangePolicyDeleteBehavior :: Maybe (Val Text)
  , _glueCrawlerSchemaChangePolicyUpdateBehavior :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueCrawlerSchemaChangePolicy where
  toJSON GlueCrawlerSchemaChangePolicy{..} =
    object $
    catMaybes
    [ fmap (("DeleteBehavior",) . toJSON) _glueCrawlerSchemaChangePolicyDeleteBehavior
    , fmap (("UpdateBehavior",) . toJSON) _glueCrawlerSchemaChangePolicyUpdateBehavior
    ]

-- | Constructor for 'GlueCrawlerSchemaChangePolicy' containing required
-- fields as arguments.
glueCrawlerSchemaChangePolicy
  :: GlueCrawlerSchemaChangePolicy
glueCrawlerSchemaChangePolicy  =
  GlueCrawlerSchemaChangePolicy
  { _glueCrawlerSchemaChangePolicyDeleteBehavior = Nothing
  , _glueCrawlerSchemaChangePolicyUpdateBehavior = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schemachangepolicy.html#cfn-glue-crawler-schemachangepolicy-deletebehavior
gcscpDeleteBehavior :: Lens' GlueCrawlerSchemaChangePolicy (Maybe (Val Text))
gcscpDeleteBehavior = lens _glueCrawlerSchemaChangePolicyDeleteBehavior (\s a -> s { _glueCrawlerSchemaChangePolicyDeleteBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schemachangepolicy.html#cfn-glue-crawler-schemachangepolicy-updatebehavior
gcscpUpdateBehavior :: Lens' GlueCrawlerSchemaChangePolicy (Maybe (Val Text))
gcscpUpdateBehavior = lens _glueCrawlerSchemaChangePolicyUpdateBehavior (\s a -> s { _glueCrawlerSchemaChangePolicyUpdateBehavior = a })
