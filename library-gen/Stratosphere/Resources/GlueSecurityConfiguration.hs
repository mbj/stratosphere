{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-securityconfiguration.html

module Stratosphere.Resources.GlueSecurityConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueSecurityConfigurationEncryptionConfiguration

-- | Full data type definition for GlueSecurityConfiguration. See
-- 'glueSecurityConfiguration' for a more convenient constructor.
data GlueSecurityConfiguration =
  GlueSecurityConfiguration
  { _glueSecurityConfigurationEncryptionConfiguration :: GlueSecurityConfigurationEncryptionConfiguration
  , _glueSecurityConfigurationName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GlueSecurityConfiguration where
  toResourceProperties GlueSecurityConfiguration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::SecurityConfiguration"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("EncryptionConfiguration",) . toJSON) _glueSecurityConfigurationEncryptionConfiguration
        , (Just . ("Name",) . toJSON) _glueSecurityConfigurationName
        ]
    }

-- | Constructor for 'GlueSecurityConfiguration' containing required fields as
-- arguments.
glueSecurityConfiguration
  :: GlueSecurityConfigurationEncryptionConfiguration -- ^ 'gscEncryptionConfiguration'
  -> Val Text -- ^ 'gscName'
  -> GlueSecurityConfiguration
glueSecurityConfiguration encryptionConfigurationarg namearg =
  GlueSecurityConfiguration
  { _glueSecurityConfigurationEncryptionConfiguration = encryptionConfigurationarg
  , _glueSecurityConfigurationName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-securityconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration
gscEncryptionConfiguration :: Lens' GlueSecurityConfiguration GlueSecurityConfigurationEncryptionConfiguration
gscEncryptionConfiguration = lens _glueSecurityConfigurationEncryptionConfiguration (\s a -> s { _glueSecurityConfigurationEncryptionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-securityconfiguration.html#cfn-glue-securityconfiguration-name
gscName :: Lens' GlueSecurityConfiguration (Val Text)
gscName = lens _glueSecurityConfigurationName (\s a -> s { _glueSecurityConfigurationName = a })
