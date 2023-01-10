
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html

module Stratosphere.ResourceProperties.ServiceCatalogCloudFormationProvisionedProductProvisioningParameter where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- ServiceCatalogCloudFormationProvisionedProductProvisioningParameter. See
-- 'serviceCatalogCloudFormationProvisionedProductProvisioningParameter' for
-- a more convenient constructor.
data ServiceCatalogCloudFormationProvisionedProductProvisioningParameter =
  ServiceCatalogCloudFormationProvisionedProductProvisioningParameter
  { _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey :: Val Text
  , _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON ServiceCatalogCloudFormationProvisionedProductProvisioningParameter where
  toJSON ServiceCatalogCloudFormationProvisionedProductProvisioningParameter{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey
    , (Just . ("Value",) . toJSON) _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue
    ]

-- | Constructor for
-- 'ServiceCatalogCloudFormationProvisionedProductProvisioningParameter'
-- containing required fields as arguments.
serviceCatalogCloudFormationProvisionedProductProvisioningParameter
  :: Val Text -- ^ 'sccfppppKey'
  -> Val Text -- ^ 'sccfppppValue'
  -> ServiceCatalogCloudFormationProvisionedProductProvisioningParameter
serviceCatalogCloudFormationProvisionedProductProvisioningParameter keyarg valuearg =
  ServiceCatalogCloudFormationProvisionedProductProvisioningParameter
  { _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey = keyarg
  , _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameter-key
sccfppppKey :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningParameter (Val Text)
sccfppppKey = lens _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningParameterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationprovisionedproduct-provisioningparameter.html#cfn-servicecatalog-cloudformationprovisionedproduct-provisioningparameter-value
sccfppppValue :: Lens' ServiceCatalogCloudFormationProvisionedProductProvisioningParameter (Val Text)
sccfppppValue = lens _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue (\s a -> s { _serviceCatalogCloudFormationProvisionedProductProvisioningParameterValue = a })
