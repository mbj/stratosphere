{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html

module Stratosphere.Resources.ServiceCatalogPortfolioPrincipalAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ServiceCatalogPortfolioPrincipalAssociation. See
-- 'serviceCatalogPortfolioPrincipalAssociation' for a more convenient
-- constructor.
data ServiceCatalogPortfolioPrincipalAssociation =
  ServiceCatalogPortfolioPrincipalAssociation
  { _serviceCatalogPortfolioPrincipalAssociationAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogPortfolioPrincipalAssociationPortfolioId :: Val Text
  , _serviceCatalogPortfolioPrincipalAssociationPrincipalARN :: Val Text
  , _serviceCatalogPortfolioPrincipalAssociationPrincipalType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogPortfolioPrincipalAssociation where
  toResourceProperties ServiceCatalogPortfolioPrincipalAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::PortfolioPrincipalAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogPortfolioPrincipalAssociationAcceptLanguage
        , (Just . ("PortfolioId",) . toJSON) _serviceCatalogPortfolioPrincipalAssociationPortfolioId
        , (Just . ("PrincipalARN",) . toJSON) _serviceCatalogPortfolioPrincipalAssociationPrincipalARN
        , (Just . ("PrincipalType",) . toJSON) _serviceCatalogPortfolioPrincipalAssociationPrincipalType
        ]
    }

-- | Constructor for 'ServiceCatalogPortfolioPrincipalAssociation' containing
-- required fields as arguments.
serviceCatalogPortfolioPrincipalAssociation
  :: Val Text -- ^ 'scppriaPortfolioId'
  -> Val Text -- ^ 'scppriaPrincipalARN'
  -> Val Text -- ^ 'scppriaPrincipalType'
  -> ServiceCatalogPortfolioPrincipalAssociation
serviceCatalogPortfolioPrincipalAssociation portfolioIdarg principalARNarg principalTypearg =
  ServiceCatalogPortfolioPrincipalAssociation
  { _serviceCatalogPortfolioPrincipalAssociationAcceptLanguage = Nothing
  , _serviceCatalogPortfolioPrincipalAssociationPortfolioId = portfolioIdarg
  , _serviceCatalogPortfolioPrincipalAssociationPrincipalARN = principalARNarg
  , _serviceCatalogPortfolioPrincipalAssociationPrincipalType = principalTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-acceptlanguage
scppriaAcceptLanguage :: Lens' ServiceCatalogPortfolioPrincipalAssociation (Maybe (Val Text))
scppriaAcceptLanguage = lens _serviceCatalogPortfolioPrincipalAssociationAcceptLanguage (\s a -> s { _serviceCatalogPortfolioPrincipalAssociationAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-portfolioid
scppriaPortfolioId :: Lens' ServiceCatalogPortfolioPrincipalAssociation (Val Text)
scppriaPortfolioId = lens _serviceCatalogPortfolioPrincipalAssociationPortfolioId (\s a -> s { _serviceCatalogPortfolioPrincipalAssociationPortfolioId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principalarn
scppriaPrincipalARN :: Lens' ServiceCatalogPortfolioPrincipalAssociation (Val Text)
scppriaPrincipalARN = lens _serviceCatalogPortfolioPrincipalAssociationPrincipalARN (\s a -> s { _serviceCatalogPortfolioPrincipalAssociationPrincipalARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principaltype
scppriaPrincipalType :: Lens' ServiceCatalogPortfolioPrincipalAssociation (Val Text)
scppriaPrincipalType = lens _serviceCatalogPortfolioPrincipalAssociationPrincipalType (\s a -> s { _serviceCatalogPortfolioPrincipalAssociationPrincipalType = a })
