{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html

module Stratosphere.Resources.ServiceCatalogTagOptionAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogTagOptionAssociation. See
-- 'serviceCatalogTagOptionAssociation' for a more convenient constructor.
data ServiceCatalogTagOptionAssociation =
  ServiceCatalogTagOptionAssociation
  { _serviceCatalogTagOptionAssociationResourceId :: Val Text
  , _serviceCatalogTagOptionAssociationTagOptionId :: Val Text
  } deriving (Show, Eq)

instance ToJSON ServiceCatalogTagOptionAssociation where
  toJSON ServiceCatalogTagOptionAssociation{..} =
    object $
    catMaybes
    [ (Just . ("ResourceId",) . toJSON) _serviceCatalogTagOptionAssociationResourceId
    , (Just . ("TagOptionId",) . toJSON) _serviceCatalogTagOptionAssociationTagOptionId
    ]

instance FromJSON ServiceCatalogTagOptionAssociation where
  parseJSON (Object obj) =
    ServiceCatalogTagOptionAssociation <$>
      (obj .: "ResourceId") <*>
      (obj .: "TagOptionId")
  parseJSON _ = mempty

-- | Constructor for 'ServiceCatalogTagOptionAssociation' containing required
-- fields as arguments.
serviceCatalogTagOptionAssociation
  :: Val Text -- ^ 'sctoaResourceId'
  -> Val Text -- ^ 'sctoaTagOptionId'
  -> ServiceCatalogTagOptionAssociation
serviceCatalogTagOptionAssociation resourceIdarg tagOptionIdarg =
  ServiceCatalogTagOptionAssociation
  { _serviceCatalogTagOptionAssociationResourceId = resourceIdarg
  , _serviceCatalogTagOptionAssociationTagOptionId = tagOptionIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-resourceid
sctoaResourceId :: Lens' ServiceCatalogTagOptionAssociation (Val Text)
sctoaResourceId = lens _serviceCatalogTagOptionAssociationResourceId (\s a -> s { _serviceCatalogTagOptionAssociationResourceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-tagoptionid
sctoaTagOptionId :: Lens' ServiceCatalogTagOptionAssociation (Val Text)
sctoaTagOptionId = lens _serviceCatalogTagOptionAssociationTagOptionId (\s a -> s { _serviceCatalogTagOptionAssociationTagOptionId = a })
