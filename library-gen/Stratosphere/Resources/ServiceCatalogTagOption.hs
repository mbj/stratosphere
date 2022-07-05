{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html

module Stratosphere.Resources.ServiceCatalogTagOption where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceCatalogTagOption. See
-- 'serviceCatalogTagOption' for a more convenient constructor.
data ServiceCatalogTagOption =
  ServiceCatalogTagOption
  { _serviceCatalogTagOptionActive :: Maybe (Val Bool)
  , _serviceCatalogTagOptionKey :: Val Text
  , _serviceCatalogTagOptionValue :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ServiceCatalogTagOption where
  toResourceProperties ServiceCatalogTagOption{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceCatalog::TagOption"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Active",) . toJSON) _serviceCatalogTagOptionActive
        , (Just . ("Key",) . toJSON) _serviceCatalogTagOptionKey
        , (Just . ("Value",) . toJSON) _serviceCatalogTagOptionValue
        ]
    }

-- | Constructor for 'ServiceCatalogTagOption' containing required fields as
-- arguments.
serviceCatalogTagOption
  :: Val Text -- ^ 'sctoKey'
  -> Val Text -- ^ 'sctoValue'
  -> ServiceCatalogTagOption
serviceCatalogTagOption keyarg valuearg =
  ServiceCatalogTagOption
  { _serviceCatalogTagOptionActive = Nothing
  , _serviceCatalogTagOptionKey = keyarg
  , _serviceCatalogTagOptionValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html#cfn-servicecatalog-tagoption-active
sctoActive :: Lens' ServiceCatalogTagOption (Maybe (Val Bool))
sctoActive = lens _serviceCatalogTagOptionActive (\s a -> s { _serviceCatalogTagOptionActive = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html#cfn-servicecatalog-tagoption-key
sctoKey :: Lens' ServiceCatalogTagOption (Val Text)
sctoKey = lens _serviceCatalogTagOptionKey (\s a -> s { _serviceCatalogTagOptionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html#cfn-servicecatalog-tagoption-value
sctoValue :: Lens' ServiceCatalogTagOption (Val Text)
sctoValue = lens _serviceCatalogTagOptionValue (\s a -> s { _serviceCatalogTagOptionValue = a })
