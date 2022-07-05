{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html

module Stratosphere.Resources.ServiceCatalogStackSetConstraint where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogStackSetConstraint. See
-- 'serviceCatalogStackSetConstraint' for a more convenient constructor.
data ServiceCatalogStackSetConstraint =
  ServiceCatalogStackSetConstraint
  { _serviceCatalogStackSetConstraintAcceptLanguage :: Maybe (Val Text)
  , _serviceCatalogStackSetConstraintAccountList :: ValList Text
  , _serviceCatalogStackSetConstraintAdminRole :: Val Text
  , _serviceCatalogStackSetConstraintDescription :: Val Text
  , _serviceCatalogStackSetConstraintExecutionRole :: Val Text
  , _serviceCatalogStackSetConstraintPortfolioId :: Val Text
  , _serviceCatalogStackSetConstraintProductId :: Val Text
  , _serviceCatalogStackSetConstraintRegionList :: ValList Text
  , _serviceCatalogStackSetConstraintStackInstanceControl :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogStackSetConstraint where
  toResourceProperties ServiceCatalogStackSetConstraint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::StackSetConstraint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AcceptLanguage",) . toJSON) _serviceCatalogStackSetConstraintAcceptLanguage
        , (Just . ("AccountList",) . toJSON) _serviceCatalogStackSetConstraintAccountList
        , (Just . ("AdminRole",) . toJSON) _serviceCatalogStackSetConstraintAdminRole
        , (Just . ("Description",) . toJSON) _serviceCatalogStackSetConstraintDescription
        , (Just . ("ExecutionRole",) . toJSON) _serviceCatalogStackSetConstraintExecutionRole
        , (Just . ("PortfolioId",) . toJSON) _serviceCatalogStackSetConstraintPortfolioId
        , (Just . ("ProductId",) . toJSON) _serviceCatalogStackSetConstraintProductId
        , (Just . ("RegionList",) . toJSON) _serviceCatalogStackSetConstraintRegionList
        , (Just . ("StackInstanceControl",) . toJSON) _serviceCatalogStackSetConstraintStackInstanceControl
        ]
    }

-- | Constructor for 'ServiceCatalogStackSetConstraint' containing required
-- fields as arguments.
serviceCatalogStackSetConstraint
  :: ValList Text -- ^ 'scsscAccountList'
  -> Val Text -- ^ 'scsscAdminRole'
  -> Val Text -- ^ 'scsscDescription'
  -> Val Text -- ^ 'scsscExecutionRole'
  -> Val Text -- ^ 'scsscPortfolioId'
  -> Val Text -- ^ 'scsscProductId'
  -> ValList Text -- ^ 'scsscRegionList'
  -> Val Text -- ^ 'scsscStackInstanceControl'
  -> ServiceCatalogStackSetConstraint
serviceCatalogStackSetConstraint accountListarg adminRolearg descriptionarg executionRolearg portfolioIdarg productIdarg regionListarg stackInstanceControlarg =
  ServiceCatalogStackSetConstraint
  { _serviceCatalogStackSetConstraintAcceptLanguage = Nothing
  , _serviceCatalogStackSetConstraintAccountList = accountListarg
  , _serviceCatalogStackSetConstraintAdminRole = adminRolearg
  , _serviceCatalogStackSetConstraintDescription = descriptionarg
  , _serviceCatalogStackSetConstraintExecutionRole = executionRolearg
  , _serviceCatalogStackSetConstraintPortfolioId = portfolioIdarg
  , _serviceCatalogStackSetConstraintProductId = productIdarg
  , _serviceCatalogStackSetConstraintRegionList = regionListarg
  , _serviceCatalogStackSetConstraintStackInstanceControl = stackInstanceControlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-acceptlanguage
scsscAcceptLanguage :: Lens' ServiceCatalogStackSetConstraint (Maybe (Val Text))
scsscAcceptLanguage = lens _serviceCatalogStackSetConstraintAcceptLanguage (\s a -> s { _serviceCatalogStackSetConstraintAcceptLanguage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-accountlist
scsscAccountList :: Lens' ServiceCatalogStackSetConstraint (ValList Text)
scsscAccountList = lens _serviceCatalogStackSetConstraintAccountList (\s a -> s { _serviceCatalogStackSetConstraintAccountList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-adminrole
scsscAdminRole :: Lens' ServiceCatalogStackSetConstraint (Val Text)
scsscAdminRole = lens _serviceCatalogStackSetConstraintAdminRole (\s a -> s { _serviceCatalogStackSetConstraintAdminRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-description
scsscDescription :: Lens' ServiceCatalogStackSetConstraint (Val Text)
scsscDescription = lens _serviceCatalogStackSetConstraintDescription (\s a -> s { _serviceCatalogStackSetConstraintDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-executionrole
scsscExecutionRole :: Lens' ServiceCatalogStackSetConstraint (Val Text)
scsscExecutionRole = lens _serviceCatalogStackSetConstraintExecutionRole (\s a -> s { _serviceCatalogStackSetConstraintExecutionRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-portfolioid
scsscPortfolioId :: Lens' ServiceCatalogStackSetConstraint (Val Text)
scsscPortfolioId = lens _serviceCatalogStackSetConstraintPortfolioId (\s a -> s { _serviceCatalogStackSetConstraintPortfolioId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-productid
scsscProductId :: Lens' ServiceCatalogStackSetConstraint (Val Text)
scsscProductId = lens _serviceCatalogStackSetConstraintProductId (\s a -> s { _serviceCatalogStackSetConstraintProductId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-regionlist
scsscRegionList :: Lens' ServiceCatalogStackSetConstraint (ValList Text)
scsscRegionList = lens _serviceCatalogStackSetConstraintRegionList (\s a -> s { _serviceCatalogStackSetConstraintRegionList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-stackinstancecontrol
scsscStackInstanceControl :: Lens' ServiceCatalogStackSetConstraint (Val Text)
scsscStackInstanceControl = lens _serviceCatalogStackSetConstraintStackInstanceControl (\s a -> s { _serviceCatalogStackSetConstraintStackInstanceControl = a })
