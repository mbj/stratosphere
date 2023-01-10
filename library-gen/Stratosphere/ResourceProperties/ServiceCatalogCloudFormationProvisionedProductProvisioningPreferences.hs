
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html

module Stratosphere.ResourceProperties.ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences.
-- See
-- 'serviceCatalogCloudFormationProvisionedProductProvisioningPreferences'
-- for a more convenient constructor.
data ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences =
  ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences
  { _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetAccounts :: Maybe (ValList Text)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureToleranceCount :: Maybe (Val Integer)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureTolerancePercentage :: Maybe (Val Integer)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyCount :: Maybe (Val Integer)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyPercentage :: Maybe (Val Integer)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetOperationType :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetRegions :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences where
  toJSON ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences{..} =
    object $
    catMaybes
    [ fmap (("StackSetAccounts",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetAccounts
    , fmap (("StackSetFailureToleranceCount",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureToleranceCount
    , fmap (("StackSetFailureTolerancePercentage",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureTolerancePercentage
    , fmap (("StackSetMaxConcurrencyCount",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyCount
    , fmap (("StackSetMaxConcurrencyPercentage",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyPercentage
    , fmap (("StackSetOperationType",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetOperationType
    , fmap (("StackSetRegions",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetRegions
    ]

-- | Constructor for
-- 'ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences'
-- containing required fields as arguments.
serviceCatalogCloudFormationProvisionedProductProvisioningPreferences
  :: ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences
serviceCatalogCloudFormationProvisionedProductProvisioningPreferences  =
  ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences
  { _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetAccounts = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureToleranceCount = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureTolerancePercentage = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyCount = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyPercentage = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetOperationType = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetRegions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetaccounts
sccfppppStackSetAccounts :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences (Maybe (ValList Text))
sccfppppStackSetAccounts = lens _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetAccounts (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetAccounts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetfailuretolerancecount
sccfppppStackSetFailureToleranceCount :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences (Maybe (Val Integer))
sccfppppStackSetFailureToleranceCount = lens _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureToleranceCount (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureToleranceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetfailuretolerancepercentage
sccfppppStackSetFailureTolerancePercentage :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences (Maybe (Val Integer))
sccfppppStackSetFailureTolerancePercentage = lens _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureTolerancePercentage (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetFailureTolerancePercentage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencycount
sccfppppStackSetMaxConcurrencyCount :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences (Maybe (Val Integer))
sccfppppStackSetMaxConcurrencyCount = lens _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyCount (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetmaxconcurrencypercentage
sccfppppStackSetMaxConcurrencyPercentage :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences (Maybe (Val Integer))
sccfppppStackSetMaxConcurrencyPercentage = lens _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyPercentage (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetMaxConcurrencyPercentage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetoperationtype
sccfppppStackSetOperationType :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences (Maybe (Val Text))
sccfppppStackSetOperationType = lens _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetOperationType (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetOperationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningpreferences-stacksetregions
sccfppppStackSetRegions :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningPreferences (Maybe (ValList Text))
sccfppppStackSetRegions = lens _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetRegions (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningPreferencesStackSetRegions = a })
