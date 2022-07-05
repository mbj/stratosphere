{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html

module Stratosphere.Resources.ServiceCatalogLaunchNotificationConstraint where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogLaunchNotificationConstraint.
-- See 'serviceCatalogLaunchNotificationConstraint' for a more convenient
-- constructor.
data ServiceCatalogLaunchNotificationConstraint =
  ServiceCatalogLaunchNotificationConstraint
  { _serviceCatalogLaunchNotificationConstraintAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogLaunchNotificationConstraintDescription :: Maybe (Val Text)
  , _serviceCatalogLaunchNotificationConstraintNotificationArns :: ValList Text
  , _serviceCatalogLaunchNotificationConstraintPortfolioId :: Val Text
  , _serviceCatalogLaunchNotificationConstraintProductId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogLaunchNotificationConstraint where
  toResourceProperties ServiceCatalogLaunchNotificationConstraint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::LaunchNotificationConstraint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogLaunchNotificationConstraintAcceptLanguage
        , fmap (("Description",) . toJSON) _serviceCatalogLaunchNotificationConstraintDescription
        , (Just . ("NotificationArns",) . toJSON) _serviceCatalogLaunchNotificationConstraintNotificationArns
        , (Just . ("PortfolioId",) . toJSON) _serviceCatalogLaunchNotificationConstraintPortfolioId
        , (Just . ("ProductId",) . toJSON) _serviceCatalogLaunchNotificationConstraintProductId
        ]
    }

-- | Constructor for 'ServiceCatalogLaunchNotificationConstraint' containing
-- required fields as arguments.
serviceCatalogLaunchNotificationConstraint
  :: ValList Text -- ^ 'sclncNotificationArns'
  -> Val Text -- ^ 'sclncPortfolioId'
  -> Val Text -- ^ 'sclncProductId'
  -> ServiceCatalogLaunchNotificationConstraint
serviceCatalogLaunchNotificationConstraint notificationArnsarg portfolioIdarg productIdarg =
  ServiceCatalogLaunchNotificationConstraint
  { _serviceCatalogLaunchNotificationConstraintAcceptLanguage = Nothing
  , _serviceCatalogLaunchNotificationConstraintDescription = Nothing
  , _serviceCatalogLaunchNotificationConstraintNotificationArns = notificationArnsarg
  , _serviceCatalogLaunchNotificationConstraintPortfolioId = portfolioIdarg
  , _serviceCatalogLaunchNotificationConstraintProductId = productIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-acceptlanguage
sclncAcceptLanguage :: Lens' ServiceCatalogLaunchNotificationConstraint (Maybe (Val Text))
sclncAcceptLanguage = lens _serviceCatalogLaunchNotificationConstraintAcceptLanguage (\s a -> s { _serviceCatalogLaunchNotificationConstraintAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-description
sclncDescription :: Lens' ServiceCatalogLaunchNotificationConstraint (Maybe (Val Text))
sclncDescription = lens _serviceCatalogLaunchNotificationConstraintDescription (\s a -> s { _serviceCatalogLaunchNotificationConstraintDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-notificationarns
sclncNotificationArns :: Lens' ServiceCatalogLaunchNotificationConstraint (ValList Text)
sclncNotificationArns = lens _serviceCatalogLaunchNotificationConstraintNotificationArns (\s a -> s { _serviceCatalogLaunchNotificationConstraintNotificationArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-portfolioid
sclncPortfolioId :: Lens' ServiceCatalogLaunchNotificationConstraint (Val Text)
sclncPortfolioId = lens _serviceCatalogLaunchNotificationConstraintPortfolioId (\s a -> s { _serviceCatalogLaunchNotificationConstraintPortfolioId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-productid
sclncProductId :: Lens' ServiceCatalogLaunchNotificationConstraint (Val Text)
sclncProductId = lens _serviceCatalogLaunchNotificationConstraintProductId (\s a -> s { _serviceCatalogLaunchNotificationConstraintProductId = a })
