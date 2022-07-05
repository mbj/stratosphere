{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html

module Stratosphere.Resources.ServiceCatalogLaunchRoleConstraint where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogLaunchRoleConstraint. See
-- 'serviceCatalogLaunchRoleConstraint' for a more convenient constructor.
data ServiceCatalogLaunchRoleConstraint =
  ServiceCatalogLaunchRoleConstraint
  { _serviceCatalogLaunchRoleConstraintAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogLaunchRoleConstraintDescription :: Maybe (Val Text)
  , _serviceCatalogLaunchRoleConstraintLocalRoleName :: Maybe (Val Text)
  , _serviceCatalogLaunchRoleConstraintPortfolioId :: Val Text
  , _serviceCatalogLaunchRoleConstraintProductId :: Val Text
  , _serviceCatalogLaunchRoleConstraintRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogLaunchRoleConstraint where
  toResourceProperties ServiceCatalogLaunchRoleConstraint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::LaunchRoleConstraint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogLaunchRoleConstraintAcceptLanguage
        , fmap (("Description",) . toJSON) _serviceCatalogLaunchRoleConstraintDescription
        , fmap (("LocalRoleName",) . toJSON) _serviceCatalogLaunchRoleConstraintLocalRoleName
        , (Just . ("PortfolioId",) . toJSON) _serviceCatalogLaunchRoleConstraintPortfolioId
        , (Just . ("ProductId",) . toJSON) _serviceCatalogLaunchRoleConstraintProductId
        , fmap (("RoleArn",) . toJSON) _serviceCatalogLaunchRoleConstraintRoleArn
        ]
    }

-- | Constructor for 'ServiceCatalogLaunchRoleConstraint' containing required
-- fields as arguments.
serviceCatalogLaunchRoleConstraint
  :: Val Text -- ^ 'sclrcPortfolioId'
  -> Val Text -- ^ 'sclrcProductId'
  -> ServiceCatalogLaunchRoleConstraint
serviceCatalogLaunchRoleConstraint portfolioIdarg productIdarg =
  ServiceCatalogLaunchRoleConstraint
  { _serviceCatalogLaunchRoleConstraintAcceptLanguage = Nothing
  , _serviceCatalogLaunchRoleConstraintDescription = Nothing
  , _serviceCatalogLaunchRoleConstraintLocalRoleName = Nothing
  , _serviceCatalogLaunchRoleConstraintPortfolioId = portfolioIdarg
  , _serviceCatalogLaunchRoleConstraintProductId = productIdarg
  , _serviceCatalogLaunchRoleConstraintRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-acceptlanguage
sclrcAcceptLanguage :: Lens' ServiceCatalogLaunchRoleConstraint (Maybe (Val Text))
sclrcAcceptLanguage = lens _serviceCatalogLaunchRoleConstraintAcceptLanguage (\s a -> s { _serviceCatalogLaunchRoleConstraintAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-description
sclrcDescription :: Lens' ServiceCatalogLaunchRoleConstraint (Maybe (Val Text))
sclrcDescription = lens _serviceCatalogLaunchRoleConstraintDescription (\s a -> s { _serviceCatalogLaunchRoleConstraintDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-localrolename
sclrcLocalRoleName :: Lens' ServiceCatalogLaunchRoleConstraint (Maybe (Val Text))
sclrcLocalRoleName = lens _serviceCatalogLaunchRoleConstraintLocalRoleName (\s a -> s { _serviceCatalogLaunchRoleConstraintLocalRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-portfolioid
sclrcPortfolioId :: Lens' ServiceCatalogLaunchRoleConstraint (Val Text)
sclrcPortfolioId = lens _serviceCatalogLaunchRoleConstraintPortfolioId (\s a -> s { _serviceCatalogLaunchRoleConstraintPortfolioId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-productid
sclrcProductId :: Lens' ServiceCatalogLaunchRoleConstraint (Val Text)
sclrcProductId = lens _serviceCatalogLaunchRoleConstraintProductId (\s a -> s { _serviceCatalogLaunchRoleConstraintProductId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-rolearn
sclrcRoleArn :: Lens' ServiceCatalogLaunchRoleConstraint (Maybe (Val Text))
sclrcRoleArn = lens _serviceCatalogLaunchRoleConstraintRoleArn (\s a -> s { _serviceCatalogLaunchRoleConstraintRoleArn = a })
