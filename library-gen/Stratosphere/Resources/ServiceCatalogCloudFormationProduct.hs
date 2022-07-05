{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html

module Stratosphere.Resources.ServiceCatalogCloudFormationProduct where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ServiceCatalogCloudFormationProductProvisioningArtifactProperties
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ServiceCatalogCloudFormationProduct. See
-- 'serviceCatalogCloudFormationProduct' for a more convenient constructor.
data ServiceCatalogCloudFormationProduct =
  ServiceCatalogCloudFormationProduct
  { _serviceCatalogCloudFormationProductAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProductDescription :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProductDistributor :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProductName :: Val Text
  , _serviceCatalogCloudFormationProductOwner :: Val Text
  , _serviceCatalogCloudFormationProductProvisioningArtifactParameters :: [ServiceCatalogCloudFormationProductProvisioningArtifactProperties]
  , _serviceCatalogCloudFormationProductReplaceProvisioningArtifacts :: Maybe (Val Bool)
  , _serviceCatalogCloudFormationProductSupportDescription :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProductSupportEmail :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProductSupportUrl :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProductTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogCloudFormationProduct where
  toResourceProperties ServiceCatalogCloudFormationProduct{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::CloudFormationProduct"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogCloudFormationProductAcceptLanguage
        , fmap (("Description",) . toJSON) _serviceCatalogCloudFormationProductDescription
        , fmap (("Distributor",) . toJSON) _serviceCatalogCloudFormationProductDistributor
        , (Just . ("Name",) . toJSON) _serviceCatalogCloudFormationProductName
        , (Just . ("Owner",) . toJSON) _serviceCatalogCloudFormationProductOwner
        , (Just . ("ProvisioningArtifactParameters",) . toJSON) _serviceCatalogCloudFormationProductProvisioningArtifactParameters
        , fmap (("ReplaceProvisioningArtifacts",) . toJSON) _serviceCatalogCloudFormationProductReplaceProvisioningArtifacts
        , fmap (("SupportDescription",) . toJSON) _serviceCatalogCloudFormationProductSupportDescription
        , fmap (("SupportEmail",) . toJSON) _serviceCatalogCloudFormationProductSupportEmail
        , fmap (("SupportUrl",) . toJSON) _serviceCatalogCloudFormationProductSupportUrl
        , fmap (("Tags",) . toJSON) _serviceCatalogCloudFormationProductTags
        ]
    }

-- | Constructor for 'ServiceCatalogCloudFormationProduct' containing required
-- fields as arguments.
serviceCatalogCloudFormationProduct
  :: Val Text -- ^ 'sccfpName'
  -> Val Text -- ^ 'sccfpOwner'
  -> [ServiceCatalogCloudFormationProductProvisioningArtifactProperties] -- ^ 'sccfpProvisioningArtifactParameters'
  -> ServiceCatalogCloudFormationProduct
serviceCatalogCloudFormationProduct namearg ownerarg provisioningArtifactParametersarg =
  ServiceCatalogCloudFormationProduct
  { _serviceCatalogCloudFormationProductAcceptLanguage = Nothing
  , _serviceCatalogCloudFormationProductDescription = Nothing
  , _serviceCatalogCloudFormationProductDistributor = Nothing
  , _serviceCatalogCloudFormationProductName = namearg
  , _serviceCatalogCloudFormationProductOwner = ownerarg
  , _serviceCatalogCloudFormationProductProvisioningArtifactParameters = provisioningArtifactParametersarg
  , _serviceCatalogCloudFormationProductReplaceProvisioningArtifacts = Nothing
  , _serviceCatalogCloudFormationProductSupportDescription = Nothing
  , _serviceCatalogCloudFormationProductSupportEmail = Nothing
  , _serviceCatalogCloudFormationProductSupportUrl = Nothing
  , _serviceCatalogCloudFormationProductTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-acceptlanguage
sccfpAcceptLanguage :: Lens' ServiceCatalogCloudFormationProduct (Maybe (Val Text))
sccfpAcceptLanguage = lens _serviceCatalogCloudFormationProductAcceptLanguage (\s a -> s { _serviceCatalogCloudFormationProductAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-description
sccfpDescription :: Lens' ServiceCatalogCloudFormationProduct (Maybe (Val Text))
sccfpDescription = lens _serviceCatalogCloudFormationProductDescription (\s a -> s { _serviceCatalogCloudFormationProductDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-distributor
sccfpDistributor :: Lens' ServiceCatalogCloudFormationProduct (Maybe (Val Text))
sccfpDistributor = lens _serviceCatalogCloudFormationProductDistributor (\s a -> s { _serviceCatalogCloudFormationProductDistributor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-name
sccfpName :: Lens' ServiceCatalogCloudFormationProduct (Val Text)
sccfpName = lens _serviceCatalogCloudFormationProductName (\s a -> s { _serviceCatalogCloudFormationProductName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-owner
sccfpOwner :: Lens' ServiceCatalogCloudFormationProduct (Val Text)
sccfpOwner = lens _serviceCatalogCloudFormationProductOwner (\s a -> s { _serviceCatalogCloudFormationProductOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactparameters
sccfpProvisioningArtifactParameters :: Lens' ServiceCatalogCloudFormationProduct [ServiceCatalogCloudFormationProductProvisioningArtifactProperties]
sccfpProvisioningArtifactParameters = lens _serviceCatalogCloudFormationProductProvisioningArtifactParameters (\s a -> s { _serviceCatalogCloudFormationProductProvisioningArtifactParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-replaceprovisioningartifacts
sccfpReplaceProvisioningArtifacts :: Lens' ServiceCatalogCloudFormationProduct (Maybe (Val Bool))
sccfpReplaceProvisioningArtifacts = lens _serviceCatalogCloudFormationProductReplaceProvisioningArtifacts (\s a -> s { _serviceCatalogCloudFormationProductReplaceProvisioningArtifacts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-supportdescription
sccfpSupportDescription :: Lens' ServiceCatalogCloudFormationProduct (Maybe (Val Text))
sccfpSupportDescription = lens _serviceCatalogCloudFormationProductSupportDescription (\s a -> s { _serviceCatalogCloudFormationProductSupportDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-supportemail
sccfpSupportEmail :: Lens' ServiceCatalogCloudFormationProduct (Maybe (Val Text))
sccfpSupportEmail = lens _serviceCatalogCloudFormationProductSupportEmail (\s a -> s { _serviceCatalogCloudFormationProductSupportEmail = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-supporturl
sccfpSupportUrl :: Lens' ServiceCatalogCloudFormationProduct (Maybe (Val Text))
sccfpSupportUrl = lens _serviceCatalogCloudFormationProductSupportUrl (\s a -> s { _serviceCatalogCloudFormationProductSupportUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-cloudformationproduct.html#cfn-servicecatalog-cloudformationproduct-tags
sccfpTags :: Lens' ServiceCatalogCloudFormationProduct (Maybe [Tag])
sccfpTags = lens _serviceCatalogCloudFormationProductTags (\s a -> s { _serviceCatalogCloudFormationProductTags = a })
