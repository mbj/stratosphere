
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html

module Stratosphere.ResourceProperties.GreengrassCoreDefinitionVersionCore where

import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassCoreDefinitionVersionCore. See
-- 'greengrassCoreDefinitionVersionCore' for a more convenient constructor.
data GreengrassCoreDefinitionVersionCore =
  GreengrassCoreDefinitionVersionCore
  { _greengrassCoreDefinitionVersionCoreCertificateArn :: Val Text
  , _greengrassCoreDefinitionVersionCoreId :: Val Text
  , _greengrassCoreDefinitionVersionCoreSyncShadow :: Maybe (Val Bool)
  , _greengrassCoreDefinitionVersionCoreThingArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassCoreDefinitionVersionCore where
  toJSON GreengrassCoreDefinitionVersionCore{..} =
    object $
    catMaybes
    [ (Just . ("CertificateArn",) . toJSON) _greengrassCoreDefinitionVersionCoreCertificateArn
    , (Just . ("Id",) . toJSON) _greengrassCoreDefinitionVersionCoreId
    , fmap (("SyncShadow",) . toJSON) _greengrassCoreDefinitionVersionCoreSyncShadow
    , (Just . ("ThingArn",) . toJSON) _greengrassCoreDefinitionVersionCoreThingArn
    ]

-- | Constructor for 'GreengrassCoreDefinitionVersionCore' containing required
-- fields as arguments.
greengrassCoreDefinitionVersionCore
  :: Val Text -- ^ 'gcdvcrCertificateArn'
  -> Val Text -- ^ 'gcdvcrId'
  -> Val Text -- ^ 'gcdvcrThingArn'
  -> GreengrassCoreDefinitionVersionCore
greengrassCoreDefinitionVersionCore certificateArnarg idarg thingArnarg =
  GreengrassCoreDefinitionVersionCore
  { _greengrassCoreDefinitionVersionCoreCertificateArn = certificateArnarg
  , _greengrassCoreDefinitionVersionCoreId = idarg
  , _greengrassCoreDefinitionVersionCoreSyncShadow = Nothing
  , _greengrassCoreDefinitionVersionCoreThingArn = thingArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-certificatearn
gcdvcrCertificateArn :: Lens' GreengrassCoreDefinitionVersionCore (Val Text)
gcdvcrCertificateArn = lens _greengrassCoreDefinitionVersionCoreCertificateArn (\s a -> s { _greengrassCoreDefinitionVersionCoreCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-id
gcdvcrId :: Lens' GreengrassCoreDefinitionVersionCore (Val Text)
gcdvcrId = lens _greengrassCoreDefinitionVersionCoreId (\s a -> s { _greengrassCoreDefinitionVersionCoreId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-syncshadow
gcdvcrSyncShadow :: Lens' GreengrassCoreDefinitionVersionCore (Maybe (Val Bool))
gcdvcrSyncShadow = lens _greengrassCoreDefinitionVersionCoreSyncShadow (\s a -> s { _greengrassCoreDefinitionVersionCoreSyncShadow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-coredefinitionversion-core.html#cfn-greengrass-coredefinitionversion-core-thingarn
gcdvcrThingArn :: Lens' GreengrassCoreDefinitionVersionCore (Val Text)
gcdvcrThingArn = lens _greengrassCoreDefinitionVersionCoreThingArn (\s a -> s { _greengrassCoreDefinitionVersionCoreThingArn = a })
