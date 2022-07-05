{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html

module Stratosphere.Resources.ServiceCatalogPortfolioProductAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogPortfolioProductAssociation.
-- See 'serviceCatalogPortfolioProductAssociation' for a more convenient
-- constructor.
data ServiceCatalogPortfolioProductAssociation =
  ServiceCatalogPortfolioProductAssociation
  { _serviceCatalogPortfolioProductAssociationAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogPortfolioProductAssociationPortfolioId :: Val Text
  , _serviceCatalogPortfolioProductAssociationProductId :: Val Text
  , _serviceCatalogPortfolioProductAssociationSourcePortfolioId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogPortfolioProductAssociation where
  toResourceProperties ServiceCatalogPortfolioProductAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::PortfolioProductAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogPortfolioProductAssociationAcceptLanguage
        , (Just . ("PortfolioId",) . toJSON) _serviceCatalogPortfolioProductAssociationPortfolioId
        , (Just . ("ProductId",) . toJSON) _serviceCatalogPortfolioProductAssociationProductId
        , fmap (("SourcePortfolioId",) . toJSON) _serviceCatalogPortfolioProductAssociationSourcePortfolioId
        ]
    }

-- | Constructor for 'ServiceCatalogPortfolioProductAssociation' containing
-- required fields as arguments.
serviceCatalogPortfolioProductAssociation
  :: Val Text -- ^ 'scpproaPortfolioId'
  -> Val Text -- ^ 'scpproaProductId'
  -> ServiceCatalogPortfolioProductAssociation
serviceCatalogPortfolioProductAssociation portfolioIdarg productIdarg =
  ServiceCatalogPortfolioProductAssociation
  { _serviceCatalogPortfolioProductAssociationAcceptLanguage = Nothing
  , _serviceCatalogPortfolioProductAssociationPortfolioId = portfolioIdarg
  , _serviceCatalogPortfolioProductAssociationProductId = productIdarg
  , _serviceCatalogPortfolioProductAssociationSourcePortfolioId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-acceptlanguage
scpproaAcceptLanguage :: Lens' ServiceCatalogPortfolioProductAssociation (Maybe (Val Text))
scpproaAcceptLanguage = lens _serviceCatalogPortfolioProductAssociationAcceptLanguage (\s a -> s { _serviceCatalogPortfolioProductAssociationAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-portfolioid
scpproaPortfolioId :: Lens' ServiceCatalogPortfolioProductAssociation (Val Text)
scpproaPortfolioId = lens _serviceCatalogPortfolioProductAssociationPortfolioId (\s a -> s { _serviceCatalogPortfolioProductAssociationPortfolioId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-productid
scpproaProductId :: Lens' ServiceCatalogPortfolioProductAssociation (Val Text)
scpproaProductId = lens _serviceCatalogPortfolioProductAssociationProductId (\s a -> s { _serviceCatalogPortfolioProductAssociationProductId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioproductassociation.html#cfn-servicecatalog-portfolioproductassociation-sourceportfolioid
scpproaSourcePortfolioId :: Lens' ServiceCatalogPortfolioProductAssociation (Maybe (Val Text))
scpproaSourcePortfolioId = lens _serviceCatalogPortfolioProductAssociationSourcePortfolioId (\s a -> s { _serviceCatalogPortfolioProductAssociationSourcePortfolioId = a })
