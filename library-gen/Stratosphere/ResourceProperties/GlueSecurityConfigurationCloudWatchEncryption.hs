
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html

module Stratosphere.ResourceProperties.GlueSecurityConfigurationCloudWatchEncryption where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GlueSecurityConfigurationCloudWatchEncryption. See
-- 'glueSecurityConfigurationCloudWatchEncryption' for a more convenient
-- constructor.
data GlueSecurityConfigurationCloudWatchEncryption =
  GlueSecurityConfigurationCloudWatchEncryption
  { _glueSecurityConfigurationCloudWatchEncryptionCloudWatchEncryptionMode :: Maybe (Val Text)
  , _glueSecurityConfigurationCloudWatchEncryptionKmsKeyArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueSecurityConfigurationCloudWatchEncryption where
  toJSON GlueSecurityConfigurationCloudWatchEncryption{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchEncryptionMode",) . toJSON) _glueSecurityConfigurationCloudWatchEncryptionCloudWatchEncryptionMode
    , fmap (("KmsKeyArn",) . toJSON) _glueSecurityConfigurationCloudWatchEncryptionKmsKeyArn
    ]

-- | Constructor for 'GlueSecurityConfigurationCloudWatchEncryption'
-- containing required fields as arguments.
glueSecurityConfigurationCloudWatchEncryption
  :: GlueSecurityConfigurationCloudWatchEncryption
glueSecurityConfigurationCloudWatchEncryption  =
  GlueSecurityConfigurationCloudWatchEncryption
  { _glueSecurityConfigurationCloudWatchEncryptionCloudWatchEncryptionMode = Nothing
  , _glueSecurityConfigurationCloudWatchEncryptionKmsKeyArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html#cfn-glue-securityconfiguration-cloudwatchencryption-cloudwatchencryptionmode
gsccweCloudWatchEncryptionMode :: Lens' GlueSecurityConfigurationCloudWatchEncryption (Maybe (Val Text))
gsccweCloudWatchEncryptionMode = lens _glueSecurityConfigurationCloudWatchEncryptionCloudWatchEncryptionMode (\s a -> s { _glueSecurityConfigurationCloudWatchEncryptionCloudWatchEncryptionMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html#cfn-glue-securityconfiguration-cloudwatchencryption-kmskeyarn
gsccweKmsKeyArn :: Lens' GlueSecurityConfigurationCloudWatchEncryption (Maybe (Val Text))
gsccweKmsKeyArn = lens _glueSecurityConfigurationCloudWatchEncryptionKmsKeyArn (\s a -> s { _glueSecurityConfigurationCloudWatchEncryptionKmsKeyArn = a })
