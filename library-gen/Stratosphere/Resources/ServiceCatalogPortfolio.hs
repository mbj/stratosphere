{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html

module Stratosphere.Resources.ServiceCatalogPortfolio where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ServiceCatalogPortfolio. See
-- 'serviceCatalogPortfolio' for a more convenient constructor.
data ServiceCatalogPortfolio =
  ServiceCatalogPortfolio
  { _serviceCatalogPortfolioAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogPortfolioDescription :: Maybe (Val Text)
  , _serviceCatalogPortfolioDisplayName :: Val Text
  , _serviceCatalogPortfolioProviderName :: Val Text
  , _serviceCatalogPortfolioTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogPortfolio where
  toResourceProperties ServiceCatalogPortfolio{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::Portfolio"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogPortfolioAcceptLanguage
        , fmap (("Description",) . toJSON) _serviceCatalogPortfolioDescription
        , (Just . ("DisplayName",) . toJSON) _serviceCatalogPortfolioDisplayName
        , (Just . ("ProviderName",) . toJSON) _serviceCatalogPortfolioProviderName
        , fmap (("Tags",) . toJSON) _serviceCatalogPortfolioTags
        ]
    }

-- | Constructor for 'ServiceCatalogPortfolio' containing required fields as
-- arguments.
serviceCatalogPortfolio
  :: Val Text -- ^ 'scpDisplayName'
  -> Val Text -- ^ 'scpProviderName'
  -> ServiceCatalogPortfolio
serviceCatalogPortfolio displayNamearg providerNamearg =
  ServiceCatalogPortfolio
  { _serviceCatalogPortfolioAcceptLanguage = Nothing
  , _serviceCatalogPortfolioDescription = Nothing
  , _serviceCatalogPortfolioDisplayName = displayNamearg
  , _serviceCatalogPortfolioProviderName = providerNamearg
  , _serviceCatalogPortfolioTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-acceptlanguage
scpAcceptLanguage :: Lens' ServiceCatalogPortfolio (Maybe (Val Text))
scpAcceptLanguage = lens _serviceCatalogPortfolioAcceptLanguage (\s a -> s { _serviceCatalogPortfolioAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-description
scpDescription :: Lens' ServiceCatalogPortfolio (Maybe (Val Text))
scpDescription = lens _serviceCatalogPortfolioDescription (\s a -> s { _serviceCatalogPortfolioDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-displayname
scpDisplayName :: Lens' ServiceCatalogPortfolio (Val Text)
scpDisplayName = lens _serviceCatalogPortfolioDisplayName (\s a -> s { _serviceCatalogPortfolioDisplayName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-providername
scpProviderName :: Lens' ServiceCatalogPortfolio (Val Text)
scpProviderName = lens _serviceCatalogPortfolioProviderName (\s a -> s { _serviceCatalogPortfolioProviderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolio.html#cfn-servicecatalog-portfolio-tags
scpTags :: Lens' ServiceCatalogPortfolio (Maybe [Tag])
scpTags = lens _serviceCatalogPortfolioTags (\s a -> s { _serviceCatalogPortfolioTags = a })
