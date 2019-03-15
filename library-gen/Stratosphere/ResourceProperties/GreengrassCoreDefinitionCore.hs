{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html

module Stratosphere.ResourceProperties.GreengrassCoreDefinitionCore where

import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassCoreDefinitionCore. See
-- 'greengrassCoreDefinitionCore' for a more convenient constructor.
data GreengrassCoreDefinitionCore =
  GreengrassCoreDefinitionCore
  { _greengrassCoreDefinitionCoreCertificateArn :: Val Text
  , _greengrassCoreDefinitionCoreId :: Val Text
  , _greengrassCoreDefinitionCoreSyncShadow :: Maybe (Val Bool)
  , _greengrassCoreDefinitionCoreThingArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassCoreDefinitionCore where
  toJSON GreengrassCoreDefinitionCore{..} =
    object $
    catMaybes
    [ (Just . ("CertificateArn",) . toJSON) _greengrassCoreDefinitionCoreCertificateArn
    , (Just . ("Id",) . toJSON) _greengrassCoreDefinitionCoreId
    , fmap (("SyncShadow",) . toJSON) _greengrassCoreDefinitionCoreSyncShadow
    , (Just . ("ThingArn",) . toJSON) _greengrassCoreDefinitionCoreThingArn
    ]

-- | Constructor for 'GreengrassCoreDefinitionCore' containing required fields
-- as arguments.
greengrassCoreDefinitionCore
  :: Val Text -- ^ 'gcdcrCertificateArn'
  -> Val Text -- ^ 'gcdcrId'
  -> Val Text -- ^ 'gcdcrThingArn'
  -> GreengrassCoreDefinitionCore
greengrassCoreDefinitionCore certificateArnarg idarg thingArnarg =
  GreengrassCoreDefinitionCore
  { _greengrassCoreDefinitionCoreCertificateArn = certificateArnarg
  , _greengrassCoreDefinitionCoreId = idarg
  , _greengrassCoreDefinitionCoreSyncShadow = Nothing
  , _greengrassCoreDefinitionCoreThingArn = thingArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-certificatearn
gcdcrCertificateArn :: Lens' GreengrassCoreDefinitionCore (Val Text)
gcdcrCertificateArn = lens _greengrassCoreDefinitionCoreCertificateArn (\s a -> s { _greengrassCoreDefinitionCoreCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-id
gcdcrId :: Lens' GreengrassCoreDefinitionCore (Val Text)
gcdcrId = lens _greengrassCoreDefinitionCoreId (\s a -> s { _greengrassCoreDefinitionCoreId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-syncshadow
gcdcrSyncShadow :: Lens' GreengrassCoreDefinitionCore (Maybe (Val Bool))
gcdcrSyncShadow = lens _greengrassCoreDefinitionCoreSyncShadow (\s a -> s { _greengrassCoreDefinitionCoreSyncShadow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinition-core.html#cfn-greengrass-coredefinition-core-thingarn
gcdcrThingArn :: Lens' GreengrassCoreDefinitionCore (Val Text)
gcdcrThingArn = lens _greengrassCoreDefinitionCoreThingArn (\s a -> s { _greengrassCoreDefinitionCoreThingArn = a })
