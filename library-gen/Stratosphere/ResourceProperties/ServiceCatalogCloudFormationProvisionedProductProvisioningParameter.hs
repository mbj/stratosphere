{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html

module Stratosphere.ResourceProperties.ServiceCatalogCloudFormationProvisionedProductProvisioningParameter where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ServiceCatalogCloudFormationProvisionedProductProvisioningParameter. See
-- 'serviceCatalogCloudFormationProvisionedProductProvisioningParameter' for
-- a more convenient constructor.
data ServiceCatalogCloudFormationProvisionedProductProvisioningParameter =
  ServiceCatalogCloudFormationProvisionedProductProvisioningParameter
  { _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ServiceCatalogCloudFormationProvisionedProductProvisioningParameter where
  toJSON ServiceCatalogCloudFormationProvisionedProductProvisioningParameter{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey
    , fmap (("Value",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue
    ]

-- | Constructor for
-- 'ServiceCatalogCloudFormationProvisionedProductProvisioningParameter'
-- containing required fields as arguments.
serviceCatalogCloudFormationProvisionedProductProvisioningParameter
  :: ServiceCatalogCloudFormationProvisionedProductProvisioningParameter
serviceCatalogCloudFormationProvisionedProductProvisioningParameter  =
  ServiceCatalogCloudFormationProvisionedProductProvisioningParameter
  { _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey = Nothing
  , _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameter-key
sccfppppKey :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningParameter (Maybe (Val Text))
sccfppppKey = lens _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameter-value
sccfppppValue :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningParameter (Maybe (Val Text))
sccfppppValue = lens _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue = a })
