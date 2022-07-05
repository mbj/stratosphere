{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html

module Stratosphere.Resources.ServiceCatalogResourceUpdateConstraint where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogResourceUpdateConstraint. See
-- 'serviceCatalogResourceUpdateConstraint' for a more convenient
-- constructor.
data ServiceCatalogResourceUpdateConstraint =
  ServiceCatalogResourceUpdateConstraint
  { _serviceCatalogResourceUpdateConstraintAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogResourceUpdateConstraintDescription :: Maybe (Val Text)
  , _serviceCatalogResourceUpdateConstraintPortfolioId :: Val Text
  , _serviceCatalogResourceUpdateConstraintProductId :: Val Text
  , _serviceCatalogResourceUpdateConstraintTagUpdateOnProvisionedProduct :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogResourceUpdateConstraint where
  toResourceProperties ServiceCatalogResourceUpdateConstraint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::ResourceUpdateConstraint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogResourceUpdateConstraintAcceptLanguage
        , fmap (("Description",) . toJSON) _serviceCatalogResourceUpdateConstraintDescription
        , (Just . ("PortfolioId",) . toJSON) _serviceCatalogResourceUpdateConstraintPortfolioId
        , (Just . ("ProductId",) . toJSON) _serviceCatalogResourceUpdateConstraintProductId
        , (Just . ("TagUpdateOnProvisionedProduct",) . toJSON) _serviceCatalogResourceUpdateConstraintTagUpdateOnProvisionedProduct
        ]
    }

-- | Constructor for 'ServiceCatalogResourceUpdateConstraint' containing
-- required fields as arguments.
serviceCatalogResourceUpdateConstraint
  :: Val Text -- ^ 'scrucPortfolioId'
  -> Val Text -- ^ 'scrucProductId'
  -> Val Text -- ^ 'scrucTagUpdateOnProvisionedProduct'
  -> ServiceCatalogResourceUpdateConstraint
serviceCatalogResourceUpdateConstraint portfolioIdarg productIdarg tagUpdateOnProvisionedProductarg =
  ServiceCatalogResourceUpdateConstraint
  { _serviceCatalogResourceUpdateConstraintAcceptLanguage = Nothing
  , _serviceCatalogResourceUpdateConstraintDescription = Nothing
  , _serviceCatalogResourceUpdateConstraintPortfolioId = portfolioIdarg
  , _serviceCatalogResourceUpdateConstraintProductId = productIdarg
  , _serviceCatalogResourceUpdateConstraintTagUpdateOnProvisionedProduct = tagUpdateOnProvisionedProductarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-acceptlanguage
scrucAcceptLanguage :: Lens' ServiceCatalogResourceUpdateConstraint (Maybe (Val Text))
scrucAcceptLanguage = lens _serviceCatalogResourceUpdateConstraintAcceptLanguage (\s a -> s { _serviceCatalogResourceUpdateConstraintAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-description
scrucDescription :: Lens' ServiceCatalogResourceUpdateConstraint (Maybe (Val Text))
scrucDescription = lens _serviceCatalogResourceUpdateConstraintDescription (\s a -> s { _serviceCatalogResourceUpdateConstraintDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-portfolioid
scrucPortfolioId :: Lens' ServiceCatalogResourceUpdateConstraint (Val Text)
scrucPortfolioId = lens _serviceCatalogResourceUpdateConstraintPortfolioId (\s a -> s { _serviceCatalogResourceUpdateConstraintPortfolioId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-productid
scrucProductId :: Lens' ServiceCatalogResourceUpdateConstraint (Val Text)
scrucProductId = lens _serviceCatalogResourceUpdateConstraintProductId (\s a -> s { _serviceCatalogResourceUpdateConstraintProductId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-tagupdateonprovisionedproduct
scrucTagUpdateOnProvisionedProduct :: Lens' ServiceCatalogResourceUpdateConstraint (Val Text)
scrucTagUpdateOnProvisionedProduct = lens _serviceCatalogResourceUpdateConstraintTagUpdateOnProvisionedProduct (\s a -> s { _serviceCatalogResourceUpdateConstraintTagUpdateOnProvisionedProduct = a })
