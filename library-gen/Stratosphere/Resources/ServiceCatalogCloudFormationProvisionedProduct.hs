{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html

module Stratosphere.Resources.ServiceCatalogCloudFormationProvisionedProduct where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ServiceCatalogCloudFormationProvisionedProductProvisioningParameter
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for
-- ServiceCatalogCloudFormationProvisionedProduct. See
-- 'serviceCatalogCloudFormationProvisionedProduct' for a more convenient
-- constructor.
data ServiceCatalogCloudFormationProvisionedProduct =
  ServiceCatalogCloudFormationProvisionedProduct
  { _serviceCatalogCloudFormationProvisionedProductAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProvisionedProductNotificationArns :: Maybe (ValList Text)
  , _serviceCatalogCloudFormationProvisionedProductPathId :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProvisionedProductProductId :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProvisionedProductProductName :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProvisionedProductProvisionedProductName :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactId :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactName :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningParameters :: Maybe [ServiceCatalogCloudFormationProvisionedProductProvisioningParameter]
  , _serviceCatalogCloudFormationProvisionedProductTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON ServiceCatalogCloudFormationProvisionedProduct where
  toJSON ServiceCatalogCloudFormationProvisionedProduct{..} =
    object $
    catMaybes
    [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogCloudFormationProvisionedProductAcceptLanguage
    , fmap (("NotificationArns",) . toJSON) _serviceCatalogCloudFormationProvisionedProductNotificationArns
    , fmap (("PathId",) . toJSON) _serviceCatalogCloudFormationProvisionedProductPathId
    , fmap (("ProductId",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProductId
    , fmap (("ProductName",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProductName
    , fmap (("ProvisionedProductName",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisionedProductName
    , fmap (("ProvisioningArtifactId",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactId
    , fmap (("ProvisioningArtifactName",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactName
    , fmap (("ProvisioningParameters",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningParameters
    , fmap (("Tags",) . toJSON) _serviceCatalogCloudFormationProvisionedProductTags
    ]

-- | Constructor for 'ServiceCatalogCloudFormationProvisionedProduct'
-- containing required fields as arguments.
serviceCatalogCloudFormationProvisionedProduct
  :: ServiceCatalogCloudFormationProvisionedProduct
serviceCatalogCloudFormationProvisionedProduct  =
  ServiceCatalogCloudFormationProvisionedProduct
  { _serviceCatalogCloudFormationProvisionedProductAcceptLanguage = Nothing
  , _serviceCatalogCloudFormationProvisionedProductNotificationArns = Nothing
  , _serviceCatalogCloudFormationProvisionedProductPathId = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProductId = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProductName = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisionedProductName = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactId = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactName = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningParameters = Nothing
  , _serviceCatalogCloudFormationProvisionedProductTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-acceptlanguage
sccfppAcceptLanguage :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe (Val Text))
sccfppAcceptLanguage = lens _serviceCatalogCloudFormationProvisionedProductAcceptLanguage (\s a -> s { _serviceCatalogCloudFormationProvisionedProductAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-notificationarns
sccfppNotificationArns :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe (ValList Text))
sccfppNotificationArns = lens _serviceCatalogCloudFormationProvisionedProductNotificationArns (\s a -> s { _serviceCatalogCloudFormationProvisionedProductNotificationArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-pathid
sccfppPathId :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe (Val Text))
sccfppPathId = lens _serviceCatalogCloudFormationProvisionedProductPathId (\s a -> s { _serviceCatalogCloudFormationProvisionedProductPathId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-productid
sccfppProductId :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe (Val Text))
sccfppProductId = lens _serviceCatalogCloudFormationProvisionedProductProductId (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProductId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-productname
sccfppProductName :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe (Val Text))
sccfppProductName = lens _serviceCatalogCloudFormationProvisionedProductProductName (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProductName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisionedproductname
sccfppProvisionedProductName :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe (Val Text))
sccfppProvisionedProductName = lens _serviceCatalogCloudFormationProvisionedProductProvisionedProductName (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisionedProductName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningartifactid
sccfppProvisioningArtifactId :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe (Val Text))
sccfppProvisioningArtifactId = lens _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactId (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningartifactname
sccfppProvisioningArtifactName :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe (Val Text))
sccfppProvisioningArtifactName = lens _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactName (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningArtifactName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameters
sccfppProvisioningParameters :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe [ServiceCatalogCloudFormationProvisionedProductProvisioningParameter])
sccfppProvisioningParameters = lens _serviceCatalogCloudFormationProvisionedProductProvisioningParameters (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationprovisionedproduct.html#cfn-servicecatalog-cloudformationprovisionedproduct-tags
sccfppTags :: Lens' ServiceCatalogCloudFormationProvisionedProduct (Maybe [Tag])
sccfppTags = lens _serviceCatalogCloudFormationProvisionedProductTags (\s a -> s { _serviceCatalogCloudFormationProvisionedProductTags = a })
