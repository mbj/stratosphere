{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html

module Stratosphere.Resources.ServiceCatalogPortfolioShare where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogPortfolioShare. See
-- 'serviceCatalogPortfolioShare' for a more convenient constructor.
data ServiceCatalogPortfolioShare =
  ServiceCatalogPortfolioShare
  { _serviceCatalogPortfolioShareAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogPortfolioShareAccountId :: Val Text
  , _serviceCatalogPortfolioSharePortfolioId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogPortfolioShare where
  toResourceProperties ServiceCatalogPortfolioShare{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::PortfolioShare"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogPortfolioShareAcceptLanguage
        , (Just . ("AccountId",) . toJSON) _serviceCatalogPortfolioShareAccountId
        , (Just . ("PortfolioId",) . toJSON) _serviceCatalogPortfolioSharePortfolioId
        ]
    }

-- | Constructor for 'ServiceCatalogPortfolioShare' containing required fields
-- as arguments.
serviceCatalogPortfolioShare
  :: Val Text -- ^ 'scpsAccountId'
  -> Val Text -- ^ 'scpsPortfolioId'
  -> ServiceCatalogPortfolioShare
serviceCatalogPortfolioShare accountIdarg portfolioIdarg =
  ServiceCatalogPortfolioShare
  { _serviceCatalogPortfolioShareAcceptLanguage = Nothing
  , _serviceCatalogPortfolioShareAccountId = accountIdarg
  , _serviceCatalogPortfolioSharePortfolioId = portfolioIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-acceptlanguage
scpsAcceptLanguage :: Lens' ServiceCatalogPortfolioShare (Maybe (Val Text))
scpsAcceptLanguage = lens _serviceCatalogPortfolioShareAcceptLanguage (\s a -> s { _serviceCatalogPortfolioShareAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-accountid
scpsAccountId :: Lens' ServiceCatalogPortfolioShare (Val Text)
scpsAccountId = lens _serviceCatalogPortfolioShareAccountId (\s a -> s { _serviceCatalogPortfolioShareAccountId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioshare.html#cfn-servicecatalog-portfolioshare-portfolioid
scpsPortfolioId :: Lens' ServiceCatalogPortfolioShare (Val Text)
scpsPortfolioId = lens _serviceCatalogPortfolioSharePortfolioId (\s a -> s { _serviceCatalogPortfolioSharePortfolioId = a })
