{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html

module Stratosphere.Resources.ServiceCatalogLaunchTemplateConstraint where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogLaunchTemplateConstraint. See
-- 'serviceCatalogLaunchTemplateConstraint' for a more convenient
-- constructor.
data ServiceCatalogLaunchTemplateConstraint =
  ServiceCatalogLaunchTemplateConstraint
  { _serviceCatalogLaunchTemplateConstraintAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogLaunchTemplateConstraintDescription :: Maybe (Val Text)
  , _serviceCatalogLaunchTemplateConstraintPortfolioId :: Val Text
  , _serviceCatalogLaunchTemplateConstraintProductId :: Val Text
  , _serviceCatalogLaunchTemplateConstraintRules :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogLaunchTemplateConstraint where
  toResourceProperties ServiceCatalogLaunchTemplateConstraint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::LaunchTemplateConstraint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogLaunchTemplateConstraintAcceptLanguage
        , fmap (("Description",) . toJSON) _serviceCatalogLaunchTemplateConstraintDescription
        , (Just . ("PortfolioId",) . toJSON) _serviceCatalogLaunchTemplateConstraintPortfolioId
        , (Just . ("ProductId",) . toJSON) _serviceCatalogLaunchTemplateConstraintProductId
        , (Just . ("Rules",) . toJSON) _serviceCatalogLaunchTemplateConstraintRules
        ]
    }

-- | Constructor for 'ServiceCatalogLaunchTemplateConstraint' containing
-- required fields as arguments.
serviceCatalogLaunchTemplateConstraint
  :: Val Text -- ^ 'scltcPortfolioId'
  -> Val Text -- ^ 'scltcProductId'
  -> Val Text -- ^ 'scltcRules'
  -> ServiceCatalogLaunchTemplateConstraint
serviceCatalogLaunchTemplateConstraint portfolioIdarg productIdarg rulesarg =
  ServiceCatalogLaunchTemplateConstraint
  { _serviceCatalogLaunchTemplateConstraintAcceptLanguage = Nothing
  , _serviceCatalogLaunchTemplateConstraintDescription = Nothing
  , _serviceCatalogLaunchTemplateConstraintPortfolioId = portfolioIdarg
  , _serviceCatalogLaunchTemplateConstraintProductId = productIdarg
  , _serviceCatalogLaunchTemplateConstraintRules = rulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-acceptlanguage
scltcAcceptLanguage :: Lens' ServiceCatalogLaunchTemplateConstraint (Maybe (Val Text))
scltcAcceptLanguage = lens _serviceCatalogLaunchTemplateConstraintAcceptLanguage (\s a -> s { _serviceCatalogLaunchTemplateConstraintAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-description
scltcDescription :: Lens' ServiceCatalogLaunchTemplateConstraint (Maybe (Val Text))
scltcDescription = lens _serviceCatalogLaunchTemplateConstraintDescription (\s a -> s { _serviceCatalogLaunchTemplateConstraintDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-portfolioid
scltcPortfolioId :: Lens' ServiceCatalogLaunchTemplateConstraint (Val Text)
scltcPortfolioId = lens _serviceCatalogLaunchTemplateConstraintPortfolioId (\s a -> s { _serviceCatalogLaunchTemplateConstraintPortfolioId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-productid
scltcProductId :: Lens' ServiceCatalogLaunchTemplateConstraint (Val Text)
scltcProductId = lens _serviceCatalogLaunchTemplateConstraintProductId (\s a -> s { _serviceCatalogLaunchTemplateConstraintProductId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-rules
scltcRules :: Lens' ServiceCatalogLaunchTemplateConstraint (Val Text)
scltcRules = lens _serviceCatalogLaunchTemplateConstraintRules (\s a -> s { _serviceCatalogLaunchTemplateConstraintRules = a })
