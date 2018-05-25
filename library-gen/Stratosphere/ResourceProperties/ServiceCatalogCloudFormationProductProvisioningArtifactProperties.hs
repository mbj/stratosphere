{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html

module Stratosphere.ResourceProperties.ServiceCatalogCloudFormationProductProvisioningArtifactProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ServiceCatalogCloudFormationProductProvisioningArtifactProperties. See
-- 'serviceCatalogCloudFormationProductProvisioningArtifactProperties' for a
-- more convenient constructor.
data ServiceCatalogCloudFormationProductProvisioningArtifactProperties =
  ServiceCatalogCloudFormationProductProvisioningArtifactProperties
  { _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesDescription :: Maybe (Val Text)
  , _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesInfo :: Object
  , _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ServiceCatalogCloudFormationProductProvisioningArtifactProperties where
  toJSON ServiceCatalogCloudFormationProductProvisioningArtifactProperties{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesDescription
    , (Just . ("Info",) . toJSON) _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesInfo
    , fmap (("Name",) . toJSON) _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesName
    ]

instance FromJSON ServiceCatalogCloudFormationProductProvisioningArtifactProperties where
  parseJSON (Object obj) =
    ServiceCatalogCloudFormationProductProvisioningArtifactProperties <$>
      (obj .:? "Description") <*>
      (obj .: "Info") <*>
      (obj .:? "Name")
  parseJSON _ = mempty

-- | Constructor for
-- 'ServiceCatalogCloudFormationProductProvisioningArtifactProperties'
-- containing required fields as arguments.
serviceCatalogCloudFormationProductProvisioningArtifactProperties
  :: Object -- ^ 'sccfppapInfo'
  -> ServiceCatalogCloudFormationProductProvisioningArtifactProperties
serviceCatalogCloudFormationProductProvisioningArtifactProperties infoarg =
  ServiceCatalogCloudFormationProductProvisioningArtifactProperties
  { _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesDescription = Nothing
  , _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesInfo = infoarg
  , _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-description
sccfppapDescription :: Lens' ServiceCatalogCloudFormationProductProvisioningArtifactProperties (Maybe (Val Text))
sccfppapDescription = lens _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesDescription (\s a -> s { _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-info
sccfppapInfo :: Lens' ServiceCatalogCloudFormationProductProvisioningArtifactProperties Object
sccfppapInfo = lens _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesInfo (\s a -> s { _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-provisioningartifactproperties.html#cfn-servicecatalog-cloudformationproduct-provisioningartifactproperties-name
sccfppapName :: Lens' ServiceCatalogCloudFormationProductProvisioningArtifactProperties (Maybe (Val Text))
sccfppapName = lens _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesName (\s a -> s { _serviceCatalogCloudFormationProductProvisioningArtifactPropertiesName = a })
